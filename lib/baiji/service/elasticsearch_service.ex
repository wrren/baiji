defmodule Baiji.ElasticsearchService do
  @moduledoc """
  Amazon Elasticsearch Configuration Service

  Use the Amazon Elasticsearch configuration API to create, configure, and
  manage Elasticsearch domains.

  The endpoint for configuration service requests is region-specific:
  es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
  current list of supported regions and endpoints, see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions"
  target="_blank).
  """
  
  @doc """
  Attaches tags to an existing Elasticsearch domain. Tags are a set of
  case-sensitive key value pairs. An Elasticsearch domain may have up to 10
  tags. See [ Tagging Amazon Elasticsearch Service Domains for more
  information.](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging"
  target="_blank)
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AddTags",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new Elasticsearch domain. For more information, see [Creating
  Elasticsearch
  Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains"
  target="_blank) in the *Amazon Elasticsearch Service Developer Guide*.
  """
  def create_elasticsearch_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateElasticsearchDomain",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes the specified Elasticsearch domain and all of its data.
  Once a domain is deleted, it cannot be recovered.
  """
  def delete_elasticsearch_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteElasticsearchDomain",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domain, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeElasticsearchDomain",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Provides cluster configuration information about the specified
  Elasticsearch domain, such as the state, creation date, update version, and
  update date for cluster options.
  """
  def describe_elasticsearch_domain_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeElasticsearchDomainConfig",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domains, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeElasticsearchDomains",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Describe Elasticsearch Limits for a given InstanceType and
  ElasticsearchVersion. When modifying existing Domain, specify the `
  `DomainName` ` to know what Limits are supported for modifying.
  """
  def describe_elasticsearch_instance_type_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeElasticsearchInstanceTypeLimits",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Returns the name of all Elasticsearch domains owned by the current user's
  account.
  """
  def list_domain_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListDomainNames",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  List all Elasticsearch instance types that are supported for given
  ElasticsearchVersion
  """
  def list_elasticsearch_instance_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListElasticsearchInstanceTypes",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  List all supported Elasticsearch versions
  """
  def list_elasticsearch_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListElasticsearchVersions",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Returns all tags for the given Elasticsearch domain.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListTags",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Removes the specified set of tags from the specified Elasticsearch domain.
  """
  def remove_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RemoveTags",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the cluster configuration of the specified Elasticsearch domain,
  setting as setting the instance type and the number of instances.
  """
  def update_elasticsearch_domain_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateElasticsearchDomainConfig",
      type:     :rest_json,
      method:   :post
    }
  end
  
end