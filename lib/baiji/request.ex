defmodule Baiji.Request do
  @moduledoc """
  Makes a request to the AWS API based on the contents of an Operation
  struct
  """
  alias Baiji.{
    Request,
    Endpoint,
    Operation
  }

  defstruct operation:  nil,
            method:     nil,
            url:        nil,
            body:       "",
            headers:    [],
            options:    []

  @doc """
  Make a request based on the provided operation
  """
  def make(%Operation{} = op) do
    op
    |> validate!
    |> new
    |> add_headers
    |> sign
    |> execute
  end

  @doc """
  Validate that the given operation includes correctly formatted inputs
  """
  def validate!(operation) do
    Request.Validator.validate!(operation)
  end

  @doc """
  Generate a Request struct
  """
  def new(%Operation{method: method, endpoint: %Endpoint{type: type}, options: options} = op) when type in [:xml, :ec2, :rest_xml] do
    %Request{
      operation: op, 
      url: url(op), 
      headers: [], 
      method: method,
      options: Keyword.take(options, [:proxy, :proxy_auth, :timeout, :recv_timeout])
    }
  end
  def new(%Operation{method: method, input: input, options: options} = op) do
    %Request{
      operation: op, 
      url: url(op), 
      body: Poison.encode!(input),
      headers: [], 
      method: method,
      options: Keyword.take(options, [:proxy, :proxy_auth, :timeout, :recv_timeout])
    }
  end
  @doc """
  Sign the given request using the authentication data contained in its operation struct
  """
  def sign(%Request{} = req) do
    req
    |> Request.Sign.v4
  end

  @doc """
  Determine the host to which the request should be sent based on the operation parameters
  """
  def host(%Operation{region: "local"}), do: "localhost"
  def host(%Operation{region: region, endpoint: %Endpoint{endpoint_prefix: prefix}}) do
    "#{prefix}.#{region}.amazonaws.com"
  end

  @doc """
  Generate a Query string for the given operation
  """
  def query(%Operation{endpoint: %{type: type}} = op) when type == :xml or type == :json or type == :ec2 do
    Request.Query.Encoder.encode(op)
  end
  def query(_), do: ""

  def path(%Operation{endpoint: %{type: type}} = op) when type == :rest_xml or type == :rest_json do
    Request.REST.Encoder.encode(op)
  end
  def path(%Operation{path: path}), do: path

  @doc """
  Determine the full URL to which the request should be sent
  """
  def url(%Operation{} = op), do: "https://#{host(op)}#{path(op)}#{query(op)}"

  @doc """
  Add the appropriate headers to the given request on the operation type, version and host
  """
  def add_headers(request) do
    request
    |> add_version_and_action_headers
    |> add_content_type_header
    |> add_target_header
    |> add_host_header
  end

  @doc """
  Add Version and Action headers to the request based on the endpoint type
  """
  def add_version_and_action_headers(%Request{operation: %{action: action, endpoint: %{type: type, version: version}}} = req) when type == :rest_json or type == :rest_xml do
    %{req | headers: [{"Action", action}, {"Version", version} | req.headers]}
  end
  def add_version_and_action_headers(req), do: req

  @doc """
  Add a content-type header based on the operation's protocol
  """
  def add_content_type_header(%Request{headers: headers, operation: %Operation{endpoint: %Endpoint{type: :json}}} = req) do
    %{req | headers: [{"Content-Type", "application/x-amz-json-1.1"} | headers]}
  end
  def add_content_type_header(%Request{headers: headers, operation: %Operation{endpoint: %Endpoint{type: :rest_json}}} = req) do
    %{req | headers: [{"Content-Type", "application/x-amz-json-1.1"} | headers]}
  end
  def add_content_type_header(req), do: req

  @doc """
  Add an X-Amz-Target header to the given request based on its target-prefix and action name
  """
  def add_target_header(%Request{operation: %Operation{endpoint: %Endpoint{target_prefix: nil}}} = req), do: req
  def add_target_header(%Request{operation: %Operation{action: action, endpoint: %Endpoint{target_prefix: prefix}}, headers: headers} = req) do
    %{req | headers: [{"X-Amz-Target", "#{prefix}.#{action}"} | headers]}
  end

  @doc """
  Add the appropriate Host header to the request
  """
  def add_host_header(%Request{operation: op, headers: headers} = req) do
    %{req | headers: [{"Host", host(op)} | headers]}
  end

  @doc """
  Execute a Request and generate a Response struct
  """
  def execute(%Request{url: url, method: method, headers: headers, body: body, operation: op, options: opts}) do
    Operation.debug(op, "Making #{method} request to #{url} with body #{body} and opts #{inspect opts}...")
    case HTTPoison.request(method, url, body, headers, opts) do
      {:ok, %{status_code: code} = response} when code >= 200 and code <= 300 ->
        {:ok, response}      
      {:ok, %{status_code: code, body: body}} ->
        Operation.error(op, "Got Body: #{body}")
        {:error, "Request returned status code #{code}: #{body}"}
      {:error, message} ->
        {:error, message}
    end
  end
end