# Baiji

AWS SDK for Elixir.

## Installation

The package can be installed by adding `baiji` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:baiji, "~> 0.6.10"}
  ]
end
```

## Usage

Baiji is modeled after the [ExAWS](https://github.com/CargoSense/ex_aws) and [aws-elixir](https://github.com/jkakar/aws-elixir) libraries and attempts to blend the best aspects of both. ExAWS has a great interface that's incredibly easy to us, and can extract credentials from instance metadata if your application is deployed onto AWS assets such as EC2 or ECS. AWS-Elixir provides greater service coverage that ExAWS through the use of code generation, however it currently cannot handle services that respond with XML.

Baiji provides total coverage of AWS services using a code generator similar to that of AWS-Elixir while allowing for the use of XML-based services. Baiji service modules include shape information from the AWS Golang SDK's API JSON descriptors, allowing it to validate inputs and to properly format outputs. Baiji also provides flexible credential acquisition using an approach similar to that of ExAWS, and supports the use of STS security tokens.

### Configuration

Add the following to your config.exs file:

```elixir
config :baiji,
  access_key_id: [{:system, "AWS_ACCESS_KEY_ID"}, :instance_role],
  secret_access_key: [{:system, "AWS_SECRET_ACCESS_KEY"}, :instance_role],
  security_token: [{:system, "AWS_SECURITY_TOKEN"}]
```

Additional options, such as debug mode, can be passed either as part of the application configuration 
or when performing operations:

```elixir
config :baiji,
  access_key_id: [{:system, "AWS_ACCESS_KEY_ID"}, :instance_role],
  secret_access_key: [{:system, "AWS_SECRET_ACCESS_KEY"}, :instance_role],
  security_token: [{:system, "AWS_SECURITY_TOKEN"}],
  region: "us-east-2
```

```elixir
iex> Baiji.EC2.describe_instances
...> |> Baiji.perform(region: "us-east-2", debug: true)

{:ok, %{"reservationSet" => [
  %{"reservationId" => ...}
  ...
```

When chaining together large numbers of API calls, particularly inside an AWS environment, it can be useful to throttle requests using a delay. The `delay` option
will cause the calling process to sleep for the specified number of milliseconds before executing the request:

```elixir
iex> Baiji.EC2.describe_instances
...> |> Baiji.perform(region: "us-east-2", delay: 300)

{:ok, %{"reservationSet" => [
  %{"reservationId" => ...}
  ...
```

### Calling Services

```elixir
iex> Baiji.EC2.describe_instances
...> |> Baiji.perform

{:ok, %{"reservationSet" => [
  %{"reservationId" => ...}
  ...
]}}

```

All services return responses as maps and accept inputs in the same way. Experiment with services using IEx in order to understand what outputs look like.

### Assuming IAM Roles

You can assume another role using the STS `AssumeRole` endpoint using an additional option when performing operations:

```elixir
iex> Baiji.EC2.describe_instances
...> |> Baiji.perform(assume_role: "arn:aws:iam::123456789012:role/example_role")

{:ok, %{"reservationSet" => [
  %{"reservationId" => ...}
  ...
]}}

```

You can also specify a role session name if you'd like to uniquely identify a session:

```elixir
iex> Baiji.EC2.describe_instances
...> |> Baiji.perform(assume_role: {"arn:aws:iam::123456789012:role/example_role", "session_name")

{:ok, %{"reservationSet" => [
  %{"reservationId" => ...}
  ...
]}}

```

By default, the role session name will be set to `baiji`.

### Passing Options to HTTPoison

In certain cases, it may be necessary to set `HTTPoison` request options in order to successfully perform operations. For example, in an AWS environment with a large number of assets, you may need to tweak the `:recv_timeout` value for a request so that it won't abort the operation before a response is received from the AWS API.

The following `HTTPoison.request` options can be included as part of the options passed to `Baiji.perform`, they'll be extracted and used at the time of the request:

* `:timeout` - timeout to establish a connection, in milliseconds. Default is 8000
* `:recv_timeout` - timeout used when receiving a connection. Default is 5000
* `:proxy` - a proxy to be used for the request; it can be a regular url or a {Host, Port} tuple
* `:proxy_auth` - proxy authentication {User, Password} tuple


## License

© 2015-2017 Warren Kenny. See LICENSE file for details.