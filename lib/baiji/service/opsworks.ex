defmodule Baiji.Opsworks do
  @moduledoc """
  AWS OpsWorks

  Welcome to the *AWS OpsWorks Stacks API Reference*. This guide provides
  descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions
  and data types, including common parameters and error codes.

  AWS OpsWorks Stacks is an application management service that provides an
  integrated experience for overseeing the complete application lifecycle.
  For information about this product, go to the [AWS
  OpsWorks](http://aws.amazon.com/opsworks/) details page.

  **SDKs and CLI**

  The most common way to use the AWS OpsWorks Stacks API is by using the AWS
  Command Line Interface (CLI) or by using one of the AWS SDKs to implement
  applications in your preferred language. For more information, see:

  <ul> <li> [AWS
  CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

  </li> <li> [AWS SDK for
  Java](http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)

  </li> <li> [AWS SDK for
  .NET](http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm)

  </li> <li> [AWS SDK for PHP
  2](http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html)

  </li> <li> [AWS SDK for Ruby](http://docs.aws.amazon.com/sdkforruby/api/)

  </li> <li> [AWS SDK for
  Node.js](http://aws.amazon.com/documentation/sdkforjavascript/)

  </li> <li> [AWS SDK for
  Python(Boto)](http://docs.pythonboto.org/en/latest/ref/opsworks.html)

  </li> </ul> **Endpoints**

  AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must
  connect to one of the following endpoints. Stacks can only be accessed or
  managed within the endpoint in which they are created.

  <ul> <li> opsworks.us-east-1.amazonaws.com

  </li> <li> opsworks.us-east-2.amazonaws.com

  </li> <li> opsworks.us-west-1.amazonaws.com

  </li> <li> opsworks.us-west-2.amazonaws.com

  </li> <li> opsworks.eu-west-1.amazonaws.com

  </li> <li> opsworks.eu-west-2.amazonaws.com

  </li> <li> opsworks.eu-central-1.amazonaws.com

  </li> <li> opsworks.ap-northeast-1.amazonaws.com

  </li> <li> opsworks.ap-northeast-2.amazonaws.com

  </li> <li> opsworks.ap-south-1.amazonaws.com

  </li> <li> opsworks.ap-southeast-1.amazonaws.com

  </li> <li> opsworks.ap-southeast-2.amazonaws.com

  </li> <li> opsworks.sa-east-1.amazonaws.com

  </li> </ul> **Chef Versions**

  When you call `CreateStack`, `CloneStack`, or `UpdateStack` we recommend
  you use the `ConfigurationManager` parameter to specify the Chef version.
  The recommended and default value for Linux stacks is currently 12. Windows
  stacks use Chef 12.2. For more information, see [Chef
  Versions](http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).

  <note> You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We
  recommend migrating your existing Linux stacks to Chef 12 as soon as
  possible.

  </note>
  """

  @doc """
  Updates an Amazon EBS volume's name or mount point. For more information,
  see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateVolume",
      method:           :post,
      input_shape:      "UpdateVolumeRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests a description of one or more layers in a specified stack.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_layers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLayers",
      method:           :post,
      input_shape:      "DescribeLayersRequest",
      output_shape:     "DescribeLayersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers an Amazon RDS instance with a stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_rds_db_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterRdsDbInstance",
      method:           :post,
      input_shape:      "RegisterRdsDbInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified instance, which terminates the associated Amazon EC2
  instance. You must stop an instance before you can delete it.

  For more information, see [Deleting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteInstance",
      method:           :post,
      input_shape:      "DeleteInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers instances that were created outside of AWS OpsWorks Stacks with a
  specified stack.

  <note> We do not recommend using this action to register instances. The
  complete registration operation includes two tasks: installing the AWS
  OpsWorks Stacks agent on the instance, and registering the instance with
  the stack. `RegisterInstance` handles only the second step. You should
  instead use the AWS CLI `register` command, which performs the entire
  registration operation. For more information, see [ Registering an Instance
  with an AWS OpsWorks Stacks
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html).

  </note> Registered instances have the same requirements as instances that
  are created by using the `CreateInstance` API. For example, registered
  instances must be running a supported Linux-based operating system, and
  they must have a supported instance type. For more information about
  requirements for instances that you want to register, see [ Preparing the
  Instance](http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterInstance",
      method:           :post,
      input_shape:      "RegisterInstanceRequest",
      output_shape:     "RegisterInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Reboots a specified instance. For more information, see [Starting,
  Stopping, and Rebooting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def reboot_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RebootInstance",
      method:           :post,
      input_shape:      "RebootInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Assign a registered instance to a layer.

  <ul> <li> You can assign registered on-premises instances to any layer
  type.

  </li> <li> You can assign registered Amazon EC2 instances only to custom
  layers.

  </li> <li> You cannot use this action with instances that were created with
  AWS OpsWorks Stacks.

  </li> </ul> **Required Permissions**: To use this action, an AWS Identity
  and Access Management (IAM) user must have a Manage permissions level for
  the stack or an attached policy that explicitly grants permissions. For
  more information on user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def assign_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssignInstance",
      method:           :post,
      input_shape:      "AssignInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes AWS OpsWorks Stacks service errors.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  def describe_service_errors(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeServiceErrors",
      method:           :post,
      input_shape:      "DescribeServiceErrorsRequest",
      output_shape:     "DescribeServiceErrorsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests a description of one or more stacks.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStacks",
      method:           :post,
      input_shape:      "DescribeStacksRequest",
      output_shape:     "DescribeStacksResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes Amazon ECS clusters that are registered with a stack. If you
  specify only a stack ID, you can use the `MaxResults` and `NextToken`
  parameters to paginate the response. However, AWS OpsWorks Stacks currently
  supports only one cluster per layer, so the result set has a maximum of one
  element.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack or an attached policy
  that explicitly grants permission. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  def describe_ecs_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEcsClusters",
      method:           :post,
      input_shape:      "DescribeEcsClustersRequest",
      output_shape:     "DescribeEcsClustersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks
  Stacks. For more information about how tagging works, see
  [Tags](http://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html)
  in the AWS OpsWorks User Guide.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "TagResource",
      method:           :post,
      input_shape:      "TagResourceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe specified users.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_user_profiles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeUserProfiles",
      method:           :post,
      input_shape:      "DescribeUserProfilesRequest",
      output_shape:     "DescribeUserProfilesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes an instance's Amazon EBS volumes.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_volumes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeVolumes",
      method:           :post,
      input_shape:      "DescribeVolumesRequest",
      output_shape:     "DescribeVolumesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the available AWS OpsWorks Stacks agent versions. You must
  specify a stack ID or a configuration manager. `DescribeAgentVersions`
  returns a list of available agent versions for the specified stack or
  configuration manager.
  """
  def describe_agent_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAgentVersions",
      method:           :post,
      input_shape:      "DescribeAgentVersionsRequest",
      output_shape:     "DescribeAgentVersionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes [Elastic IP
  addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_elastic_ips(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeElasticIps",
      method:           :post,
      input_shape:      "DescribeElasticIpsRequest",
      output_shape:     "DescribeElasticIpsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an app for a specified stack. For more information, see [Creating
  Apps](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateApp",
      method:           :post,
      input_shape:      "CreateAppRequest",
      output_shape:     "CreateAppResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a specified user profile.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateUserProfile",
      method:           :post,
      input_shape:      "UpdateUserProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a specified app.

  **Required Permissions**: To use this action, an IAM user must have a
  Deploy or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateApp",
      method:           :post,
      input_shape:      "UpdateAppRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a generated host name for the specified layer, based on the current
  host name theme.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def get_hostname_suggestion(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetHostnameSuggestion",
      method:           :post,
      input_shape:      "GetHostnameSuggestionRequest",
      output_shape:     "GetHostnameSuggestionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes load-based auto scaling configurations for specified layers.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_load_based_auto_scaling(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLoadBasedAutoScaling",
      method:           :post,
      input_shape:      "DescribeLoadBasedAutoScalingRequest",
      output_shape:     "DescribeLoadBasedAutoScalingResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a specified instance.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateInstance",
      method:           :post,
      input_shape:      "UpdateInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def stop_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopStack",
      method:           :post,
      input_shape:      "StopStackRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches an Elastic Load Balancing load balancer to a specified layer. AWS
  OpsWorks Stacks does not support Application Load Balancer. You can only
  use Classic Load Balancer with AWS OpsWorks Stacks. For more information,
  see [Elastic Load
  Balancing](http://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html).

  <note> You must create the Elastic Load Balancing instance separately, by
  using the Elastic Load Balancing console, API, or CLI. For more
  information, see [ Elastic Load Balancing Developer
  Guide](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html).

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def attach_elastic_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AttachElasticLoadBalancer",
      method:           :post,
      input_shape:      "AttachElasticLoadBalancerRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes tags from a specified stack or layer.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UntagResource",
      method:           :post,
      input_shape:      "UntagResourceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an Amazon RDS instance.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_rds_db_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateRdsDbInstance",
      method:           :post,
      input_shape:      "UpdateRdsDbInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Unassigns an assigned Amazon EBS volume. The volume remains registered with
  the stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def unassign_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UnassignVolume",
      method:           :post,
      input_shape:      "UnassignVolumeRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Assigns one of the stack's registered Amazon EBS volumes to a specified
  instance. The volume must first be registered with the stack by calling
  `RegisterVolume`. After you register the volume, you must call
  `UpdateVolume` to specify a mount point before calling `AssignVolume`. For
  more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def assign_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssignVolume",
      method:           :post,
      input_shape:      "AssignVolumeRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes a stack's Elastic Load Balancing instances.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_elastic_load_balancers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeElasticLoadBalancers",
      method:           :post,
      input_shape:      "DescribeElasticLoadBalancersRequest",
      output_shape:     "DescribeElasticLoadBalancersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Detaches a specified Elastic Load Balancing instance from its layer.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def detach_elastic_load_balancer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DetachElasticLoadBalancer",
      method:           :post,
      input_shape:      "DetachElasticLoadBalancerRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified stack. You must first delete all instances, layers, and
  apps or deregister registered instances. For more information, see [Shut
  Down a
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteStack",
      method:           :post,
      input_shape:      "DeleteStackRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a user profile.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserProfile",
      method:           :post,
      input_shape:      "DeleteUserProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Runs deployment or stack commands. For more information, see [Deploying
  Apps](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html)
  and [Run Stack
  Commands](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Deploy or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDeployment",
      method:           :post,
      input_shape:      "CreateDeploymentRequest",
      output_shape:     "CreateDeploymentResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new stack. For more information, see [Create a New
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html).

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateStack",
      method:           :post,
      input_shape:      "CreateStackRequest",
      output_shape:     "CreateStackResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the number of layers and apps in a specified stack, and the
  number of instances in each state, such as `running_setup` or `online`.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stack_summary(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackSummary",
      method:           :post,
      input_shape:      "DescribeStackSummaryRequest",
      output_shape:     "DescribeStackSummaryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  <note> This action can be used only with Windows stacks.

  </note> Grants RDP access to a Windows instance for a specified time
  period.
  """
  def grant_access(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GrantAccess",
      method:           :post,
      input_shape:      "GrantAccessRequest",
      output_shape:     "GrantAccessResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests a description of a specified set of apps.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_apps(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeApps",
      method:           :post,
      input_shape:      "DescribeAppsRequest",
      output_shape:     "DescribeAppsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deregisters a specified Elastic IP address. The address can then be
  registered by another stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_elastic_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterElasticIp",
      method:           :post,
      input_shape:      "DeregisterElasticIpRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a user's SSH public key.

  **Required Permissions**: To use this action, an IAM user must have
  self-management enabled or an attached policy that explicitly grants
  permissions. For more information on user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_my_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateMyUserProfile",
      method:           :post,
      input_shape:      "UpdateMyUserProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests a description of a stack's provisioning parameters.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stack_provisioning_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeStackProvisioningParameters",
      method:           :post,
      input_shape:      "DescribeStackProvisioningParametersRequest",
      output_shape:     "DescribeStackProvisioningParametersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers an Amazon EBS volume with a specified stack. A volume can be
  registered with only one stack at a time. If the volume is already
  registered, you must first deregister it by calling `DeregisterVolume`. For
  more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterVolume",
      method:           :post,
      input_shape:      "RegisterVolumeRequest",
      output_shape:     "RegisterVolumeResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified layer. You must first stop and then delete all
  associated instances or unassign registered instances. For more
  information, see [How to Delete a
  Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_layer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteLayer",
      method:           :post,
      input_shape:      "DeleteLayerRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests a description of a specified set of deployments.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDeployments",
      method:           :post,
      input_shape:      "DescribeDeploymentsRequest",
      output_shape:     "DescribeDeploymentsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes time-based auto scaling configurations for specified instances.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_time_based_auto_scaling(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTimeBasedAutoScaling",
      method:           :post,
      input_shape:      "DescribeTimeBasedAutoScalingRequest",
      output_shape:     "DescribeTimeBasedAutoScalingResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deregisters an Amazon EBS volume. The volume can then be registered by
  another stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_volume(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterVolume",
      method:           :post,
      input_shape:      "DeregisterVolumeRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the results of specified commands.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_commands(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeCommands",
      method:           :post,
      input_shape:      "DescribeCommandsRequest",
      output_shape:     "DescribeCommandsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Unassigns a registered instance from all of it's layers. The instance
  remains in the stack as an unassigned instance and can be assigned to
  another layer, as needed. You cannot use this action with instances that
  were created with AWS OpsWorks Stacks.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def unassign_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UnassignInstance",
      method:           :post,
      input_shape:      "UnassignInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers an Elastic IP address with a specified stack. An address can be
  registered with only one stack at a time. If the address is already
  registered, you must first deregister it by calling `DeregisterElasticIp`.
  For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_elastic_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterElasticIp",
      method:           :post,
      input_shape:      "RegisterElasticIpRequest",
      output_shape:     "RegisterElasticIpResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a specified Amazon ECS cluster with a stack. You can register
  only one cluster with a stack. A cluster can be registered with only one
  stack. For more information, see [ Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [ Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_ecs_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RegisterEcsCluster",
      method:           :post,
      input_shape:      "RegisterEcsClusterRequest",
      output_shape:     "RegisterEcsClusterResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a clone of a specified stack. For more information, see [Clone a
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html).
  By default, all parameters are set to the values used by the parent stack.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def clone_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CloneStack",
      method:           :post,
      input_shape:      "CloneStackRequest",
      output_shape:     "CloneStackResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a registered Elastic IP address's name. For more information, see
  [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_elastic_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateElasticIp",
      method:           :post,
      input_shape:      "UpdateElasticIpRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an instance in a specified stack. For more information, see [Adding
  an Instance to a
  Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateInstance",
      method:           :post,
      input_shape:      "CreateInstanceRequest",
      output_shape:     "CreateInstanceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Specifies a user's permissions. For more information, see [Security and
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetPermission",
      method:           :post,
      input_shape:      "SetPermissionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a specified layer.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_layer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateLayer",
      method:           :post,
      input_shape:      "UpdateLayerRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new user profile.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUserProfile",
      method:           :post,
      input_shape:      "CreateUserProfileRequest",
      output_shape:     "CreateUserProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates an Elastic IP address from its instance. The address remains
  registered with the stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def disassociate_elastic_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateElasticIp",
      method:           :post,
      input_shape:      "DisassociateElasticIpRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the permissions for a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_permissions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribePermissions",
      method:           :post,
      input_shape:      "DescribePermissionsRequest",
      output_shape:     "DescribePermissionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops a specified instance. When you stop a standard instance, the data
  disappears and must be reinstalled when you restart the instance. You can
  stop an Amazon EBS-backed instance without losing data. For more
  information, see [Starting, Stopping, and Rebooting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def stop_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopInstance",
      method:           :post,
      input_shape:      "StopInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts a stack's instances.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def start_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartStack",
      method:           :post,
      input_shape:      "StartStackRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes a user's SSH information.

  **Required Permissions**: To use this action, an IAM user must have
  self-management enabled or an attached policy that explicitly grants
  permissions. For more information on user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_my_user_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMyUserProfile",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeMyUserProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deregisters an Amazon RDS instance.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_rds_db_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterRdsDbInstance",
      method:           :post,
      input_shape:      "DeregisterRdsDbInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateStack",
      method:           :post,
      input_shape:      "UpdateStackRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Specify the time-based auto scaling configuration for a specified instance.
  For more information, see [Managing Load with Time-based and Load-based
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_time_based_auto_scaling(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetTimeBasedAutoScaling",
      method:           :post,
      input_shape:      "SetTimeBasedAutoScalingRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a layer. For more information, see [How to Create a
  Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html).

  <note> You should use **CreateLayer** for noncustom layer types such as PHP
  App Server only if the stack does not have an existing layer of that type.
  A stack can have at most one instance of each noncustom layer; if you
  attempt to create a second instance, **CreateLayer** fails. A stack can
  have an arbitrary number of custom layers, so you can call **CreateLayer**
  as many times as you like for that layer type.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_layer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateLayer",
      method:           :post,
      input_shape:      "CreateLayerRequest",
      output_shape:     "CreateLayerResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe an instance's RAID arrays.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_raid_arrays(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeRaidArrays",
      method:           :post,
      input_shape:      "DescribeRaidArraysRequest",
      output_shape:     "DescribeRaidArraysResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates one of the stack's registered Elastic IP addresses with a
  specified instance. The address must first be registered with the stack by
  calling `RegisterElasticIp`. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def associate_elastic_ip(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateElasticIp",
      method:           :post,
      input_shape:      "AssociateElasticIpRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests a description of a set of instances.

  <note> This call accepts only one resource-identifying parameter.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstances",
      method:           :post,
      input_shape:      "DescribeInstancesRequest",
      output_shape:     "DescribeInstancesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deregister a registered Amazon EC2 or on-premises instance. This action
  removes the instance from the stack and returns it to your control. This
  action can not be used with instances that were created with AWS OpsWorks
  Stacks.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterInstance",
      method:           :post,
      input_shape:      "DeregisterInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deregisters a specified Amazon ECS cluster from a stack. For more
  information, see [ Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see
  [http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_ecs_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeregisterEcsCluster",
      method:           :post,
      input_shape:      "DeregisterEcsClusterRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a specified app.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_app(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteApp",
      method:           :post,
      input_shape:      "DeleteAppRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes Amazon RDS instances.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  def describe_rds_db_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeRdsDbInstances",
      method:           :post,
      input_shape:      "DescribeRdsDbInstancesRequest",
      output_shape:     "DescribeRdsDbInstancesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts a specified instance. For more information, see [Starting, Stopping,
  and Rebooting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def start_instance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartInstance",
      method:           :post,
      input_shape:      "StartInstanceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of tags that are applied to the specified stack or layer.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTags",
      method:           :post,
      input_shape:      "ListTagsRequest",
      output_shape:     "ListTagsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Specify the load-based auto scaling configuration for a specified layer.
  For more information, see [Managing Load with Time-based and Load-based
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

  <note> To use load-based auto scaling, you must create a set of load-based
  auto scaling instances. Load-based auto scaling operates only on the
  instances from that set, so you must ensure that you have created enough
  instances to handle the maximum anticipated load.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_load_based_auto_scaling(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetLoadBasedAutoScaling",
      method:           :post,
      input_shape:      "SetLoadBasedAutoScalingRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "opsworks",
      target_prefix:    "OpsWorks_20130218",
      endpoint_prefix:  "opsworks",
      type:             :json,
      version:          "2013-02-18",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"AssignInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "LayerIds" => %{"shape" => "Strings"}}, "required" => ["InstanceId", "LayerIds"], "type" => "structure"}, "DescribeStacksResult" => %{"members" => %{"Stacks" => %{"shape" => "Stacks"}}, "type" => "structure"}, "StackConfigurationManager" => %{"members" => %{"Name" => %{"shape" => "String"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeVolumesRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "RaidArrayId" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "VolumeIds" => %{"shape" => "Strings"}}, "type" => "structure"}, "TagKeys" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "SourceType" => %{"enum" => ["git", "svn", "archive", "s3"], "type" => "string"}, "CreateDeploymentResult" => %{"members" => %{"DeploymentId" => %{"shape" => "String"}}, "type" => "structure"}, "DetachElasticLoadBalancerRequest" => %{"members" => %{"ElasticLoadBalancerName" => %{"shape" => "String"}, "LayerId" => %{"shape" => "String"}}, "required" => ["ElasticLoadBalancerName", "LayerId"], "type" => "structure"}, "DescribeStackSummaryResult" => %{"members" => %{"StackSummary" => %{"shape" => "StackSummary"}}, "type" => "structure"}, "DescribeElasticIpsRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "Ips" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "CreateUserProfileRequest" => %{"members" => %{"AllowSelfManagement" => %{"shape" => "Boolean"}, "IamUserArn" => %{"shape" => "String"}, "SshPublicKey" => %{"shape" => "String"}, "SshUsername" => %{"shape" => "String"}}, "required" => ["IamUserArn"], "type" => "structure"}, "CloudWatchLogsConfiguration" => %{"members" => %{"Enabled" => %{"shape" => "Boolean"}, "LogStreams" => %{"shape" => "CloudWatchLogsLogStreams"}}, "type" => "structure"}, "ReportedOs" => %{"members" => %{"Family" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "VolumeConfigurations" => %{"member" => %{"shape" => "VolumeConfiguration"}, "type" => "list"}, "RegisterVolumeResult" => %{"members" => %{"VolumeId" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateAppRequest" => %{"members" => %{"AppId" => %{"shape" => "String"}, "AppSource" => %{"shape" => "Source"}, "Attributes" => %{"shape" => "AppAttributes"}, "DataSources" => %{"shape" => "DataSources"}, "Description" => %{"shape" => "String"}, "Domains" => %{"shape" => "Strings"}, "EnableSsl" => %{"shape" => "Boolean"}, "Environment" => %{"shape" => "EnvironmentVariables"}, "Name" => %{"shape" => "String"}, "SslConfiguration" => %{"shape" => "SslConfiguration"}, "Type" => %{"shape" => "AppType"}}, "required" => ["AppId"], "type" => "structure"}, "DeregisterEcsClusterRequest" => %{"members" => %{"EcsClusterArn" => %{"shape" => "String"}}, "required" => ["EcsClusterArn"], "type" => "structure"}, "RegisterElasticIpRequest" => %{"members" => %{"ElasticIp" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "required" => ["ElasticIp", "StackId"], "type" => "structure"}, "DescribeElasticLoadBalancersResult" => %{"members" => %{"ElasticLoadBalancers" => %{"shape" => "ElasticLoadBalancers"}}, "type" => "structure"}, "DescribeAppsRequest" => %{"members" => %{"AppIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "DeregisterElasticIpRequest" => %{"members" => %{"ElasticIp" => %{"shape" => "String"}}, "required" => ["ElasticIp"], "type" => "structure"}, "UserProfile" => %{"members" => %{"AllowSelfManagement" => %{"shape" => "Boolean"}, "IamUserArn" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "SshPublicKey" => %{"shape" => "String"}, "SshUsername" => %{"shape" => "String"}}, "type" => "structure"}, "CreateInstanceRequest" => %{"members" => %{"AgentVersion" => %{"shape" => "String"}, "AmiId" => %{"shape" => "String"}, "Architecture" => %{"shape" => "Architecture"}, "AutoScalingType" => %{"shape" => "AutoScalingType"}, "AvailabilityZone" => %{"shape" => "String"}, "BlockDeviceMappings" => %{"shape" => "BlockDeviceMappings"}, "EbsOptimized" => %{"shape" => "Boolean"}, "Hostname" => %{"shape" => "String"}, "InstallUpdatesOnBoot" => %{"shape" => "Boolean"}, "InstanceType" => %{"shape" => "String"}, "LayerIds" => %{"shape" => "Strings"}, "Os" => %{"shape" => "String"}, "RootDeviceType" => %{"shape" => "RootDeviceType"}, "SshKeyName" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "SubnetId" => %{"shape" => "String"}, "Tenancy" => %{"shape" => "String"}, "VirtualizationType" => %{"shape" => "String"}}, "required" => ["StackId", "LayerIds", "InstanceType"], "type" => "structure"}, "String" => %{"type" => "string"}, "ElasticIp" => %{"members" => %{"Domain" => %{"shape" => "String"}, "InstanceId" => %{"shape" => "String"}, "Ip" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Region" => %{"shape" => "String"}}, "type" => "structure"}, "BlockDeviceMappings" => %{"member" => %{"shape" => "BlockDeviceMapping"}, "type" => "list"}, "Boolean" => %{"box" => true, "type" => "boolean"}, "DescribeInstancesResult" => %{"members" => %{"Instances" => %{"shape" => "Instances"}}, "type" => "structure"}, "DescribeCommandsRequest" => %{"members" => %{"CommandIds" => %{"shape" => "Strings"}, "DeploymentId" => %{"shape" => "String"}, "InstanceId" => %{"shape" => "String"}}, "type" => "structure"}, "CreateDeploymentRequest" => %{"members" => %{"AppId" => %{"shape" => "String"}, "Command" => %{"shape" => "DeploymentCommand"}, "Comment" => %{"shape" => "String"}, "CustomJson" => %{"shape" => "String"}, "InstanceIds" => %{"shape" => "Strings"}, "LayerIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "required" => ["StackId", "Command"], "type" => "structure"}, "DescribeUserProfilesRequest" => %{"members" => %{"IamUserArns" => %{"shape" => "Strings"}}, "type" => "structure"}, "Volumes" => %{"member" => %{"shape" => "Volume"}, "type" => "list"}, "RdsDbInstances" => %{"member" => %{"shape" => "RdsDbInstance"}, "type" => "list"}, "UnassignVolumeRequest" => %{"members" => %{"VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "DescribeEcsClustersResult" => %{"members" => %{"EcsClusters" => %{"shape" => "EcsClusters"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeLoadBasedAutoScalingRequest" => %{"members" => %{"LayerIds" => %{"shape" => "Strings"}}, "required" => ["LayerIds"], "type" => "structure"}, "CreateUserProfileResult" => %{"members" => %{"IamUserArn" => %{"shape" => "String"}}, "type" => "structure"}, "Layer" => %{"members" => %{"Arn" => %{"shape" => "String"}, "Attributes" => %{"shape" => "LayerAttributes"}, "AutoAssignElasticIps" => %{"shape" => "Boolean"}, "AutoAssignPublicIps" => %{"shape" => "Boolean"}, "CloudWatchLogsConfiguration" => %{"shape" => "CloudWatchLogsConfiguration"}, "CreatedAt" => %{"shape" => "DateTime"}, "CustomInstanceProfileArn" => %{"shape" => "String"}, "CustomJson" => %{"shape" => "String"}, "CustomRecipes" => %{"shape" => "Recipes"}, "CustomSecurityGroupIds" => %{"shape" => "Strings"}, "DefaultRecipes" => %{"shape" => "Recipes"}, "DefaultSecurityGroupNames" => %{"shape" => "Strings"}, "EnableAutoHealing" => %{"shape" => "Boolean"}, "InstallUpdatesOnBoot" => %{"shape" => "Boolean"}, "LayerId" => %{"shape" => "String"}, "LifecycleEventConfiguration" => %{"shape" => "LifecycleEventConfiguration"}, "Name" => %{"shape" => "String"}, "Packages" => %{"shape" => "Strings"}, "Shortname" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "Type" => %{"shape" => "LayerType"}, "UseEbsOptimizedInstances" => %{"shape" => "Boolean"}, "VolumeConfigurations" => %{"shape" => "VolumeConfigurations"}}, "type" => "structure"}, "AutoScalingThresholds" => %{"members" => %{"Alarms" => %{"shape" => "Strings"}, "CpuThreshold" => %{"shape" => "Double"}, "IgnoreMetricsTime" => %{"shape" => "Minute"}, "InstanceCount" => %{"shape" => "Integer"}, "LoadThreshold" => %{"shape" => "Double"}, "MemoryThreshold" => %{"shape" => "Double"}, "ThresholdsWaitTime" => %{"shape" => "Minute"}}, "type" => "structure"}, "RegisterRdsDbInstanceRequest" => %{"members" => %{"DbPassword" => %{"shape" => "String"}, "DbUser" => %{"shape" => "String"}, "RdsDbInstanceArn" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "required" => ["StackId", "RdsDbInstanceArn", "DbUser", "DbPassword"], "type" => "structure"}, "CreateStackRequest" => %{"members" => %{"AgentVersion" => %{"shape" => "String"}, "Attributes" => %{"shape" => "StackAttributes"}, "ChefConfiguration" => %{"shape" => "ChefConfiguration"}, "ConfigurationManager" => %{"shape" => "StackConfigurationManager"}, "CustomCookbooksSource" => %{"shape" => "Source"}, "CustomJson" => %{"shape" => "String"}, "DefaultAvailabilityZone" => %{"shape" => "String"}, "DefaultInstanceProfileArn" => %{"shape" => "String"}, "DefaultOs" => %{"shape" => "String"}, "DefaultRootDeviceType" => %{"shape" => "RootDeviceType"}, "DefaultSshKeyName" => %{"shape" => "String"}, "DefaultSubnetId" => %{"shape" => "String"}, "HostnameTheme" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Region" => %{"shape" => "String"}, "ServiceRoleArn" => %{"shape" => "String"}, "UseCustomCookbooks" => %{"shape" => "Boolean"}, "UseOpsworksSecurityGroups" => %{"shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "required" => ["Name", "Region", "ServiceRoleArn", "DefaultInstanceProfileArn"], "type" => "structure"}, "DescribeAppsResult" => %{"members" => %{"Apps" => %{"shape" => "Apps"}}, "type" => "structure"}, "DescribeAgentVersionsResult" => %{"members" => %{"AgentVersions" => %{"shape" => "AgentVersions"}}, "type" => "structure"}, "RegisterEcsClusterRequest" => %{"members" => %{"EcsClusterArn" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "required" => ["EcsClusterArn", "StackId"], "type" => "structure"}, "CloudWatchLogsEncoding" => %{"enum" => ["ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"], "type" => "string"}, "DescribeTimeBasedAutoScalingRequest" => %{"members" => %{"InstanceIds" => %{"shape" => "Strings"}}, "required" => ["InstanceIds"], "type" => "structure"}, "EcsClusters" => %{"member" => %{"shape" => "EcsCluster"}, "type" => "list"}, "SetPermissionRequest" => %{"members" => %{"AllowSsh" => %{"shape" => "Boolean"}, "AllowSudo" => %{"shape" => "Boolean"}, "IamUserArn" => %{"shape" => "String"}, "Level" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "required" => ["StackId", "IamUserArn"], "type" => "structure"}, "StopInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "ValidForInMinutes" => %{"box" => true, "max" => 1440, "min" => 60, "type" => "integer"}, "DescribeAgentVersionsRequest" => %{"members" => %{"ConfigurationManager" => %{"shape" => "StackConfigurationManager"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "ChefConfiguration" => %{"members" => %{"BerkshelfVersion" => %{"shape" => "String"}, "ManageBerkshelf" => %{"shape" => "Boolean"}}, "type" => "structure"}, "CloneStackRequest" => %{"members" => %{"AgentVersion" => %{"shape" => "String"}, "Attributes" => %{"shape" => "StackAttributes"}, "ChefConfiguration" => %{"shape" => "ChefConfiguration"}, "CloneAppIds" => %{"shape" => "Strings"}, "ClonePermissions" => %{"shape" => "Boolean"}, "ConfigurationManager" => %{"shape" => "StackConfigurationManager"}, "CustomCookbooksSource" => %{"shape" => "Source"}, "CustomJson" => %{"shape" => "String"}, "DefaultAvailabilityZone" => %{"shape" => "String"}, "DefaultInstanceProfileArn" => %{"shape" => "String"}, "DefaultOs" => %{"shape" => "String"}, "DefaultRootDeviceType" => %{"shape" => "RootDeviceType"}, "DefaultSshKeyName" => %{"shape" => "String"}, "DefaultSubnetId" => %{"shape" => "String"}, "HostnameTheme" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Region" => %{"shape" => "String"}, "ServiceRoleArn" => %{"shape" => "String"}, "SourceStackId" => %{"shape" => "String"}, "UseCustomCookbooks" => %{"shape" => "Boolean"}, "UseOpsworksSecurityGroups" => %{"shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "required" => ["SourceStackId", "ServiceRoleArn"], "type" => "structure"}, "Strings" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "DeregisterVolumeRequest" => %{"members" => %{"VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "AttachElasticLoadBalancerRequest" => %{"members" => %{"ElasticLoadBalancerName" => %{"shape" => "String"}, "LayerId" => %{"shape" => "String"}}, "required" => ["ElasticLoadBalancerName", "LayerId"], "type" => "structure"}, "AgentVersions" => %{"member" => %{"shape" => "AgentVersion"}, "type" => "list"}, "ElasticLoadBalancer" => %{"members" => %{"AvailabilityZones" => %{"shape" => "Strings"}, "DnsName" => %{"shape" => "String"}, "Ec2InstanceIds" => %{"shape" => "Strings"}, "ElasticLoadBalancerName" => %{"shape" => "String"}, "LayerId" => %{"shape" => "String"}, "Region" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "Strings"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure"}, "Layers" => %{"member" => %{"shape" => "Layer"}, "type" => "list"}, "ElasticLoadBalancers" => %{"member" => %{"shape" => "ElasticLoadBalancer"}, "type" => "list"}, "ElasticIps" => %{"member" => %{"shape" => "ElasticIp"}, "type" => "list"}, "StartStackRequest" => %{"members" => %{"StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "DescribeUserProfilesResult" => %{"members" => %{"UserProfiles" => %{"shape" => "UserProfiles"}}, "type" => "structure"}, "TimeBasedAutoScalingConfigurations" => %{"member" => %{"shape" => "TimeBasedAutoScalingConfiguration"}, "type" => "list"}, "DescribeServiceErrorsRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "ServiceErrorIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "LifecycleEventConfiguration" => %{"members" => %{"Shutdown" => %{"shape" => "ShutdownEventConfiguration"}}, "type" => "structure"}, "Stack" => %{"members" => %{"AgentVersion" => %{"shape" => "String"}, "Arn" => %{"shape" => "String"}, "Attributes" => %{"shape" => "StackAttributes"}, "ChefConfiguration" => %{"shape" => "ChefConfiguration"}, "ConfigurationManager" => %{"shape" => "StackConfigurationManager"}, "CreatedAt" => %{"shape" => "DateTime"}, "CustomCookbooksSource" => %{"shape" => "Source"}, "CustomJson" => %{"shape" => "String"}, "DefaultAvailabilityZone" => %{"shape" => "String"}, "DefaultInstanceProfileArn" => %{"shape" => "String"}, "DefaultOs" => %{"shape" => "String"}, "DefaultRootDeviceType" => %{"shape" => "RootDeviceType"}, "DefaultSshKeyName" => %{"shape" => "String"}, "DefaultSubnetId" => %{"shape" => "String"}, "HostnameTheme" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Region" => %{"shape" => "String"}, "ServiceRoleArn" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "UseCustomCookbooks" => %{"shape" => "Boolean"}, "UseOpsworksSecurityGroups" => %{"shape" => "Boolean"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeDeploymentsRequest" => %{"members" => %{"AppId" => %{"shape" => "String"}, "DeploymentIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "ListTagsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ResourceArn" => %{"shape" => "ResourceArn"}}, "required" => ["ResourceArn"], "type" => "structure"}, "DescribeStackProvisioningParametersResult" => %{"members" => %{"AgentInstallerUrl" => %{"shape" => "String"}, "Parameters" => %{"shape" => "Parameters"}}, "type" => "structure"}, "ShutdownEventConfiguration" => %{"members" => %{"DelayUntilElbConnectionsDrained" => %{"shape" => "Boolean"}, "ExecutionTimeout" => %{"shape" => "Integer"}}, "type" => "structure"}, "DescribeRaidArraysRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "RaidArrayIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "CloudWatchLogsTimeZone" => %{"enum" => ["LOCAL", "UTC"], "type" => "string"}, "AssociateElasticIpRequest" => %{"members" => %{"ElasticIp" => %{"shape" => "String"}, "InstanceId" => %{"shape" => "String"}}, "required" => ["ElasticIp"], "type" => "structure"}, "Deployment" => %{"members" => %{"AppId" => %{"shape" => "String"}, "Command" => %{"shape" => "DeploymentCommand"}, "Comment" => %{"shape" => "String"}, "CompletedAt" => %{"shape" => "DateTime"}, "CreatedAt" => %{"shape" => "DateTime"}, "CustomJson" => %{"shape" => "String"}, "DeploymentId" => %{"shape" => "String"}, "Duration" => %{"shape" => "Integer"}, "IamUserArn" => %{"shape" => "String"}, "InstanceIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeInstancesRequest" => %{"members" => %{"InstanceIds" => %{"shape" => "Strings"}, "LayerId" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "DeploymentCommandName" => %{"enum" => ["install_dependencies", "update_dependencies", "update_custom_cookbooks", "execute_recipes", "configure", "setup", "deploy", "rollback", "start", "stop", "restart", "undeploy"], "type" => "string"}, "Minute" => %{"box" => true, "max" => 100, "min" => 1, "type" => "integer"}, "UntagResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArn"}, "TagKeys" => %{"shape" => "TagKeys"}}, "required" => ["ResourceArn", "TagKeys"], "type" => "structure"}, "DescribeLayersRequest" => %{"members" => %{"LayerIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "LayerAttributes" => %{"key" => %{"shape" => "LayerAttributesKeys"}, "type" => "map", "value" => %{"shape" => "String"}}, "SetTimeBasedAutoScalingRequest" => %{"members" => %{"AutoScalingSchedule" => %{"shape" => "WeeklyAutoScalingSchedule"}, "InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "CreateLayerResult" => %{"members" => %{"LayerId" => %{"shape" => "String"}}, "type" => "structure"}, "EnvironmentVariables" => %{"member" => %{"shape" => "EnvironmentVariable"}, "type" => "list"}, "Tags" => %{"key" => %{"shape" => "TagKey"}, "type" => "map", "value" => %{"shape" => "TagValue"}}, "RdsDbInstance" => %{"members" => %{"Address" => %{"shape" => "String"}, "DbInstanceIdentifier" => %{"shape" => "String"}, "DbPassword" => %{"shape" => "String"}, "DbUser" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "MissingOnRds" => %{"shape" => "Boolean"}, "RdsDbInstanceArn" => %{"shape" => "String"}, "Region" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "SelfUserProfile" => %{"members" => %{"IamUserArn" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "SshPublicKey" => %{"shape" => "String"}, "SshUsername" => %{"shape" => "String"}}, "type" => "structure"}, "AppAttributesKeys" => %{"enum" => ["DocumentRoot", "RailsEnv", "AutoBundleOnDeploy", "AwsFlowRubySettings"], "type" => "string"}, "RaidArrays" => %{"member" => %{"shape" => "RaidArray"}, "type" => "list"}, "Command" => %{"members" => %{"AcknowledgedAt" => %{"shape" => "DateTime"}, "CommandId" => %{"shape" => "String"}, "CompletedAt" => %{"shape" => "DateTime"}, "CreatedAt" => %{"shape" => "DateTime"}, "DeploymentId" => %{"shape" => "String"}, "ExitCode" => %{"shape" => "Integer"}, "InstanceId" => %{"shape" => "String"}, "LogUrl" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeTimeBasedAutoScalingResult" => %{"members" => %{"TimeBasedAutoScalingConfigurations" => %{"shape" => "TimeBasedAutoScalingConfigurations"}}, "type" => "structure"}, "AssignVolumeRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "CreateAppRequest" => %{"members" => %{"AppSource" => %{"shape" => "Source"}, "Attributes" => %{"shape" => "AppAttributes"}, "DataSources" => %{"shape" => "DataSources"}, "Description" => %{"shape" => "String"}, "Domains" => %{"shape" => "Strings"}, "EnableSsl" => %{"shape" => "Boolean"}, "Environment" => %{"shape" => "EnvironmentVariables"}, "Name" => %{"shape" => "String"}, "Shortname" => %{"shape" => "String"}, "SslConfiguration" => %{"shape" => "SslConfiguration"}, "StackId" => %{"shape" => "String"}, "Type" => %{"shape" => "AppType"}}, "required" => ["StackId", "Name", "Type"], "type" => "structure"}, "RootDeviceType" => %{"enum" => ["ebs", "instance-store"], "type" => "string"}, "RegisterInstanceResult" => %{"members" => %{"InstanceId" => %{"shape" => "String"}}, "type" => "structure"}, "MaxResults" => %{"type" => "integer"}, "UpdateLayerRequest" => %{"members" => %{"Attributes" => %{"shape" => "LayerAttributes"}, "AutoAssignElasticIps" => %{"shape" => "Boolean"}, "AutoAssignPublicIps" => %{"shape" => "Boolean"}, "CloudWatchLogsConfiguration" => %{"shape" => "CloudWatchLogsConfiguration"}, "CustomInstanceProfileArn" => %{"shape" => "String"}, "CustomJson" => %{"shape" => "String"}, "CustomRecipes" => %{"shape" => "Recipes"}, "CustomSecurityGroupIds" => %{"shape" => "Strings"}, "EnableAutoHealing" => %{"shape" => "Boolean"}, "InstallUpdatesOnBoot" => %{"shape" => "Boolean"}, "LayerId" => %{"shape" => "String"}, "LifecycleEventConfiguration" => %{"shape" => "LifecycleEventConfiguration"}, "Name" => %{"shape" => "String"}, "Packages" => %{"shape" => "Strings"}, "Shortname" => %{"shape" => "String"}, "UseEbsOptimizedInstances" => %{"shape" => "Boolean"}, "VolumeConfigurations" => %{"shape" => "VolumeConfigurations"}}, "required" => ["LayerId"], "type" => "structure"}, "DeleteInstanceRequest" => %{"members" => %{"DeleteElasticIp" => %{"shape" => "Boolean"}, "DeleteVolumes" => %{"shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "GrantAccessResult" => %{"members" => %{"TemporaryCredential" => %{"shape" => "TemporaryCredential"}}, "type" => "structure"}, "ServiceError" => %{"members" => %{"CreatedAt" => %{"shape" => "DateTime"}, "InstanceId" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}, "ServiceErrorId" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeLayersResult" => %{"members" => %{"Layers" => %{"shape" => "Layers"}}, "type" => "structure"}, "TagValue" => %{"type" => "string"}, "AutoScalingType" => %{"enum" => ["load", "timer"], "type" => "string"}, "ValidationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "WeeklyAutoScalingSchedule" => %{"members" => %{"Friday" => %{"shape" => "DailyAutoScalingSchedule"}, "Monday" => %{"shape" => "DailyAutoScalingSchedule"}, "Saturday" => %{"shape" => "DailyAutoScalingSchedule"}, "Sunday" => %{"shape" => "DailyAutoScalingSchedule"}, "Thursday" => %{"shape" => "DailyAutoScalingSchedule"}, "Tuesday" => %{"shape" => "DailyAutoScalingSchedule"}, "Wednesday" => %{"shape" => "DailyAutoScalingSchedule"}}, "type" => "structure"}, "InstanceIdentity" => %{"members" => %{"Document" => %{"shape" => "String"}, "Signature" => %{"shape" => "String"}}, "type" => "structure"}, "Switch" => %{"type" => "string"}, "StopStackRequest" => %{"members" => %{"StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "GetHostnameSuggestionRequest" => %{"members" => %{"LayerId" => %{"shape" => "String"}}, "required" => ["LayerId"], "type" => "structure"}, "Instances" => %{"member" => %{"shape" => "Instance"}, "type" => "list"}, "StartInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "Double" => %{"box" => true, "type" => "double"}, "TemporaryCredential" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "Password" => %{"shape" => "String"}, "Username" => %{"shape" => "String"}, "ValidForInMinutes" => %{"shape" => "Integer"}}, "type" => "structure"}, "CloudWatchLogsLogStreams" => %{"member" => %{"shape" => "CloudWatchLogsLogStream"}, "type" => "list"}, "LayerAttributesKeys" => %{"enum" => ["EcsClusterArn", "EnableHaproxyStats", "HaproxyStatsUrl", "HaproxyStatsUser", "HaproxyStatsPassword", "HaproxyHealthCheckUrl", "HaproxyHealthCheckMethod", "MysqlRootPassword", "MysqlRootPasswordUbiquitous", "GangliaUrl", "GangliaUser", "GangliaPassword", "MemcachedMemory", "NodejsVersion", "RubyVersion", "RubygemsVersion", "ManageBundler", "BundlerVersion", "RailsStack", "PassengerVersion", "Jvm", "JvmVersion", "JvmOptions", "JavaAppServer", "JavaAppServerVersion"], "type" => "string"}, "InstancesCount" => %{"members" => %{"Assigning" => %{"shape" => "Integer"}, "Booting" => %{"shape" => "Integer"}, "ConnectionLost" => %{"shape" => "Integer"}, "Deregistering" => %{"shape" => "Integer"}, "Online" => %{"shape" => "Integer"}, "Pending" => %{"shape" => "Integer"}, "Rebooting" => %{"shape" => "Integer"}, "Registered" => %{"shape" => "Integer"}, "Registering" => %{"shape" => "Integer"}, "Requested" => %{"shape" => "Integer"}, "RunningSetup" => %{"shape" => "Integer"}, "SetupFailed" => %{"shape" => "Integer"}, "ShuttingDown" => %{"shape" => "Integer"}, "StartFailed" => %{"shape" => "Integer"}, "Stopped" => %{"shape" => "Integer"}, "Stopping" => %{"shape" => "Integer"}, "Terminated" => %{"shape" => "Integer"}, "Terminating" => %{"shape" => "Integer"}, "Unassigning" => %{"shape" => "Integer"}}, "type" => "structure"}, "RegisterVolumeRequest" => %{"members" => %{"Ec2VolumeId" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "DisassociateElasticIpRequest" => %{"members" => %{"ElasticIp" => %{"shape" => "String"}}, "required" => ["ElasticIp"], "type" => "structure"}, "ServiceErrors" => %{"member" => %{"shape" => "ServiceError"}, "type" => "list"}, "UpdateInstanceRequest" => %{"members" => %{"AgentVersion" => %{"shape" => "String"}, "AmiId" => %{"shape" => "String"}, "Architecture" => %{"shape" => "Architecture"}, "AutoScalingType" => %{"shape" => "AutoScalingType"}, "EbsOptimized" => %{"shape" => "Boolean"}, "Hostname" => %{"shape" => "String"}, "InstallUpdatesOnBoot" => %{"shape" => "Boolean"}, "InstanceId" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "String"}, "LayerIds" => %{"shape" => "Strings"}, "Os" => %{"shape" => "String"}, "SshKeyName" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "Hour" => %{"type" => "string"}, "ResourceArn" => %{"type" => "string"}, "EnvironmentVariable" => %{"members" => %{"Key" => %{"shape" => "String"}, "Secure" => %{"shape" => "Boolean"}, "Value" => %{"shape" => "String"}}, "required" => ["Key", "Value"], "type" => "structure"}, "TagResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArn"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["ResourceArn", "Tags"], "type" => "structure"}, "DescribeElasticLoadBalancersRequest" => %{"members" => %{"LayerIds" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "LoadBasedAutoScalingConfiguration" => %{"members" => %{"DownScaling" => %{"shape" => "AutoScalingThresholds"}, "Enable" => %{"shape" => "Boolean"}, "LayerId" => %{"shape" => "String"}, "UpScaling" => %{"shape" => "AutoScalingThresholds"}}, "type" => "structure"}, "DeleteLayerRequest" => %{"members" => %{"LayerId" => %{"shape" => "String"}}, "required" => ["LayerId"], "type" => "structure"}, "TimeBasedAutoScalingConfiguration" => %{"members" => %{"AutoScalingSchedule" => %{"shape" => "WeeklyAutoScalingSchedule"}, "InstanceId" => %{"shape" => "String"}}, "type" => "structure"}, "UnassignInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "StackAttributesKeys" => %{"enum" => ["Color"], "type" => "string"}, "UpdateStackRequest" => %{"members" => %{"AgentVersion" => %{"shape" => "String"}, "Attributes" => %{"shape" => "StackAttributes"}, "ChefConfiguration" => %{"shape" => "ChefConfiguration"}, "ConfigurationManager" => %{"shape" => "StackConfigurationManager"}, "CustomCookbooksSource" => %{"shape" => "Source"}, "CustomJson" => %{"shape" => "String"}, "DefaultAvailabilityZone" => %{"shape" => "String"}, "DefaultInstanceProfileArn" => %{"shape" => "String"}, "DefaultOs" => %{"shape" => "String"}, "DefaultRootDeviceType" => %{"shape" => "RootDeviceType"}, "DefaultSshKeyName" => %{"shape" => "String"}, "DefaultSubnetId" => %{"shape" => "String"}, "HostnameTheme" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "ServiceRoleArn" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "UseCustomCookbooks" => %{"shape" => "Boolean"}, "UseOpsworksSecurityGroups" => %{"shape" => "Boolean"}}, "required" => ["StackId"], "type" => "structure"}, "DeploymentCommand" => %{"members" => %{"Args" => %{"shape" => "DeploymentCommandArgs"}, "Name" => %{"shape" => "DeploymentCommandName"}}, "required" => ["Name"], "type" => "structure"}, "LoadBasedAutoScalingConfigurations" => %{"member" => %{"shape" => "LoadBasedAutoScalingConfiguration"}, "type" => "list"}, "RegisterEcsClusterResult" => %{"members" => %{"EcsClusterArn" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeElasticIpsResult" => %{"members" => %{"ElasticIps" => %{"shape" => "ElasticIps"}}, "type" => "structure"}, "DescribeCommandsResult" => %{"members" => %{"Commands" => %{"shape" => "Commands"}}, "type" => "structure"}, "DescribeStackSummaryRequest" => %{"members" => %{"StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "UpdateUserProfileRequest" => %{"members" => %{"AllowSelfManagement" => %{"shape" => "Boolean"}, "IamUserArn" => %{"shape" => "String"}, "SshPublicKey" => %{"shape" => "String"}, "SshUsername" => %{"shape" => "String"}}, "required" => ["IamUserArn"], "type" => "structure"}, "CloneStackResult" => %{"members" => %{"StackId" => %{"shape" => "String"}}, "type" => "structure"}, "Apps" => %{"member" => %{"shape" => "App"}, "type" => "list"}, "DescribeDeploymentsResult" => %{"members" => %{"Deployments" => %{"shape" => "Deployments"}}, "type" => "structure"}, "UpdateRdsDbInstanceRequest" => %{"members" => %{"DbPassword" => %{"shape" => "String"}, "DbUser" => %{"shape" => "String"}, "RdsDbInstanceArn" => %{"shape" => "String"}}, "required" => ["RdsDbInstanceArn"], "type" => "structure"}, "CreateInstanceResult" => %{"members" => %{"InstanceId" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeServiceErrorsResult" => %{"members" => %{"ServiceErrors" => %{"shape" => "ServiceErrors"}}, "type" => "structure"}, "UserProfiles" => %{"member" => %{"shape" => "UserProfile"}, "type" => "list"}, "AppAttributes" => %{"key" => %{"shape" => "AppAttributesKeys"}, "type" => "map", "value" => %{"shape" => "String"}}, "UpdateVolumeRequest" => %{"members" => %{"MountPoint" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "VolumeId" => %{"shape" => "String"}}, "required" => ["VolumeId"], "type" => "structure"}, "AgentVersion" => %{"members" => %{"ConfigurationManager" => %{"shape" => "StackConfigurationManager"}, "Version" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeStacksRequest" => %{"members" => %{"StackIds" => %{"shape" => "Strings"}}, "type" => "structure"}, "RaidArray" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "CreatedAt" => %{"shape" => "DateTime"}, "Device" => %{"shape" => "String"}, "InstanceId" => %{"shape" => "String"}, "Iops" => %{"shape" => "Integer"}, "MountPoint" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "NumberOfDisks" => %{"shape" => "Integer"}, "RaidArrayId" => %{"shape" => "String"}, "RaidLevel" => %{"shape" => "Integer"}, "Size" => %{"shape" => "Integer"}, "StackId" => %{"shape" => "String"}, "VolumeType" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeRaidArraysResult" => %{"members" => %{"RaidArrays" => %{"shape" => "RaidArrays"}}, "type" => "structure"}, "EbsBlockDevice" => %{"members" => %{"DeleteOnTermination" => %{"shape" => "Boolean"}, "Iops" => %{"shape" => "Integer"}, "SnapshotId" => %{"shape" => "String"}, "VolumeSize" => %{"shape" => "Integer"}, "VolumeType" => %{"shape" => "VolumeType"}}, "type" => "structure"}, "SetLoadBasedAutoScalingRequest" => %{"members" => %{"DownScaling" => %{"shape" => "AutoScalingThresholds"}, "Enable" => %{"shape" => "Boolean"}, "LayerId" => %{"shape" => "String"}, "UpScaling" => %{"shape" => "AutoScalingThresholds"}}, "required" => ["LayerId"], "type" => "structure"}, "CloudWatchLogsInitialPosition" => %{"enum" => ["start_of_file", "end_of_file"], "type" => "string"}, "CreateAppResult" => %{"members" => %{"AppId" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeLoadBasedAutoScalingResult" => %{"members" => %{"LoadBasedAutoScalingConfigurations" => %{"shape" => "LoadBasedAutoScalingConfigurations"}}, "type" => "structure"}, "DeleteAppRequest" => %{"members" => %{"AppId" => %{"shape" => "String"}}, "required" => ["AppId"], "type" => "structure"}, "DeregisterRdsDbInstanceRequest" => %{"members" => %{"RdsDbInstanceArn" => %{"shape" => "String"}}, "required" => ["RdsDbInstanceArn"], "type" => "structure"}, "StackAttributes" => %{"key" => %{"shape" => "StackAttributesKeys"}, "type" => "map", "value" => %{"shape" => "String"}}, "UpdateElasticIpRequest" => %{"members" => %{"ElasticIp" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}}, "required" => ["ElasticIp"], "type" => "structure"}, "RegisterElasticIpResult" => %{"members" => %{"ElasticIp" => %{"shape" => "String"}}, "type" => "structure"}, "Recipes" => %{"members" => %{"Configure" => %{"shape" => "Strings"}, "Deploy" => %{"shape" => "Strings"}, "Setup" => %{"shape" => "Strings"}, "Shutdown" => %{"shape" => "Strings"}, "Undeploy" => %{"shape" => "Strings"}}, "type" => "structure"}, "DescribeRdsDbInstancesResult" => %{"members" => %{"RdsDbInstances" => %{"shape" => "RdsDbInstances"}}, "type" => "structure"}, "DescribeRdsDbInstancesRequest" => %{"members" => %{"RdsDbInstanceArns" => %{"shape" => "Strings"}, "StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "App" => %{"members" => %{"AppId" => %{"shape" => "String"}, "AppSource" => %{"shape" => "Source"}, "Attributes" => %{"shape" => "AppAttributes"}, "CreatedAt" => %{"shape" => "String"}, "DataSources" => %{"shape" => "DataSources"}, "Description" => %{"shape" => "String"}, "Domains" => %{"shape" => "Strings"}, "EnableSsl" => %{"shape" => "Boolean"}, "Environment" => %{"shape" => "EnvironmentVariables"}, "Name" => %{"shape" => "String"}, "Shortname" => %{"shape" => "String"}, "SslConfiguration" => %{"shape" => "SslConfiguration"}, "StackId" => %{"shape" => "String"}, "Type" => %{"shape" => "AppType"}}, "type" => "structure"}, "GetHostnameSuggestionResult" => %{"members" => %{"Hostname" => %{"shape" => "String"}, "LayerId" => %{"shape" => "String"}}, "type" => "structure"}, "GrantAccessRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}, "ValidForInMinutes" => %{"shape" => "ValidForInMinutes"}}, "required" => ["InstanceId"], "type" => "structure"}, "Deployments" => %{"member" => %{"shape" => "Deployment"}, "type" => "list"}, "UpdateMyUserProfileRequest" => %{"members" => %{"SshPublicKey" => %{"shape" => "String"}}, "type" => "structure"}, "Parameters" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "ListTagsResult" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "AppType" => %{"enum" => ["aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"], "type" => "string"}, "LayerType" => %{"enum" => ["aws-flow-ruby", "ecs-cluster", "java-app", "lb", "web", "php-app", "rails-app", "nodejs-app", "memcached", "db-master", "monitoring-master", "custom"], "type" => "string"}, "DescribePermissionsRequest" => %{"members" => %{"IamUserArn" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "EcsCluster" => %{"members" => %{"EcsClusterArn" => %{"shape" => "String"}, "EcsClusterName" => %{"shape" => "String"}, "RegisteredAt" => %{"shape" => "DateTime"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "VolumeType" => %{"enum" => ["gp2", "io1", "standard"], "type" => "string"}, "TagKey" => %{"type" => "string"}, "DeregisterInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "DescribeStackProvisioningParametersRequest" => %{"members" => %{"StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "DescribeEcsClustersRequest" => %{"members" => %{"EcsClusterArns" => %{"shape" => "Strings"}, "MaxResults" => %{"shape" => "Integer"}, "NextToken" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "Permission" => %{"members" => %{"AllowSsh" => %{"shape" => "Boolean"}, "AllowSudo" => %{"shape" => "Boolean"}, "IamUserArn" => %{"shape" => "String"}, "Level" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "DescribePermissionsResult" => %{"members" => %{"Permissions" => %{"shape" => "Permissions"}}, "type" => "structure"}, "DescribeVolumesResult" => %{"members" => %{"Volumes" => %{"shape" => "Volumes"}}, "type" => "structure"}, "DateTime" => %{"type" => "string"}, "RebootInstanceRequest" => %{"members" => %{"InstanceId" => %{"shape" => "String"}}, "required" => ["InstanceId"], "type" => "structure"}, "DeleteStackRequest" => %{"members" => %{"StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "Source" => %{"members" => %{"Password" => %{"shape" => "String"}, "Revision" => %{"shape" => "String"}, "SshKey" => %{"shape" => "String"}, "Type" => %{"shape" => "SourceType"}, "Url" => %{"shape" => "String"}, "Username" => %{"shape" => "String"}}, "type" => "structure"}, "CreateLayerRequest" => %{"members" => %{"Attributes" => %{"shape" => "LayerAttributes"}, "AutoAssignElasticIps" => %{"shape" => "Boolean"}, "AutoAssignPublicIps" => %{"shape" => "Boolean"}, "CloudWatchLogsConfiguration" => %{"shape" => "CloudWatchLogsConfiguration"}, "CustomInstanceProfileArn" => %{"shape" => "String"}, "CustomJson" => %{"shape" => "String"}, "CustomRecipes" => %{"shape" => "Recipes"}, "CustomSecurityGroupIds" => %{"shape" => "Strings"}, "EnableAutoHealing" => %{"shape" => "Boolean"}, "InstallUpdatesOnBoot" => %{"shape" => "Boolean"}, "LifecycleEventConfiguration" => %{"shape" => "LifecycleEventConfiguration"}, "Name" => %{"shape" => "String"}, "Packages" => %{"shape" => "Strings"}, "Shortname" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "Type" => %{"shape" => "LayerType"}, "UseEbsOptimizedInstances" => %{"shape" => "Boolean"}, "VolumeConfigurations" => %{"shape" => "VolumeConfigurations"}}, "required" => ["StackId", "Type", "Name", "Shortname"], "type" => "structure"}, "VolumeConfiguration" => %{"members" => %{"Iops" => %{"shape" => "Integer"}, "MountPoint" => %{"shape" => "String"}, "NumberOfDisks" => %{"shape" => "Integer"}, "RaidLevel" => %{"shape" => "Integer"}, "Size" => %{"shape" => "Integer"}, "VolumeType" => %{"shape" => "String"}}, "required" => ["MountPoint", "NumberOfDisks", "Size"], "type" => "structure"}, "CreateStackResult" => %{"members" => %{"StackId" => %{"shape" => "String"}}, "type" => "structure"}, "Stacks" => %{"member" => %{"shape" => "Stack"}, "type" => "list"}, "DataSources" => %{"member" => %{"shape" => "DataSource"}, "type" => "list"}, "StackSummary" => %{"members" => %{"AppsCount" => %{"shape" => "Integer"}, "Arn" => %{"shape" => "String"}, "InstancesCount" => %{"shape" => "InstancesCount"}, "LayersCount" => %{"shape" => "Integer"}, "Name" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "type" => "structure"}, "DeploymentCommandArgs" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "Strings"}}, "Integer" => %{"box" => true, "type" => "integer"}, "DescribeMyUserProfileResult" => %{"members" => %{"UserProfile" => %{"shape" => "SelfUserProfile"}}, "type" => "structure"}, "DailyAutoScalingSchedule" => %{"key" => %{"shape" => "Hour"}, "type" => "map", "value" => %{"shape" => "Switch"}}, "DataSource" => %{"members" => %{"Arn" => %{"shape" => "String"}, "DatabaseName" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "SslConfiguration" => %{"members" => %{"Certificate" => %{"shape" => "String"}, "Chain" => %{"shape" => "String"}, "PrivateKey" => %{"shape" => "String"}}, "required" => ["Certificate", "PrivateKey"], "type" => "structure"}, "NextToken" => %{"type" => "string"}, "DeleteUserProfileRequest" => %{"members" => %{"IamUserArn" => %{"shape" => "String"}}, "required" => ["IamUserArn"], "type" => "structure"}, "CloudWatchLogsLogStream" => %{"members" => %{"BatchCount" => %{"shape" => "Integer"}, "BatchSize" => %{"shape" => "Integer"}, "BufferDuration" => %{"shape" => "Integer"}, "DatetimeFormat" => %{"shape" => "String"}, "Encoding" => %{"shape" => "CloudWatchLogsEncoding"}, "File" => %{"shape" => "String"}, "FileFingerprintLines" => %{"shape" => "String"}, "InitialPosition" => %{"shape" => "CloudWatchLogsInitialPosition"}, "LogGroupName" => %{"shape" => "String"}, "MultiLineStartPattern" => %{"shape" => "String"}, "TimeZone" => %{"shape" => "CloudWatchLogsTimeZone"}}, "type" => "structure"}, "Permissions" => %{"member" => %{"shape" => "Permission"}, "type" => "list"}, "Volume" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "Device" => %{"shape" => "String"}, "Ec2VolumeId" => %{"shape" => "String"}, "InstanceId" => %{"shape" => "String"}, "Iops" => %{"shape" => "Integer"}, "MountPoint" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "RaidArrayId" => %{"shape" => "String"}, "Region" => %{"shape" => "String"}, "Size" => %{"shape" => "Integer"}, "Status" => %{"shape" => "String"}, "VolumeId" => %{"shape" => "String"}, "VolumeType" => %{"shape" => "String"}}, "type" => "structure"}, "BlockDeviceMapping" => %{"members" => %{"DeviceName" => %{"shape" => "String"}, "Ebs" => %{"shape" => "EbsBlockDevice"}, "NoDevice" => %{"shape" => "String"}, "VirtualName" => %{"shape" => "String"}}, "type" => "structure"}, "RegisterInstanceRequest" => %{"members" => %{"Hostname" => %{"shape" => "String"}, "InstanceIdentity" => %{"shape" => "InstanceIdentity"}, "PrivateIp" => %{"shape" => "String"}, "PublicIp" => %{"shape" => "String"}, "RsaPublicKey" => %{"shape" => "String"}, "RsaPublicKeyFingerprint" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}}, "required" => ["StackId"], "type" => "structure"}, "Architecture" => %{"enum" => ["x86_64", "i386"], "type" => "string"}, "VirtualizationType" => %{"enum" => ["paravirtual", "hvm"], "type" => "string"}, "Instance" => %{"members" => %{"ReportedOs" => %{"shape" => "ReportedOs"}, "CreatedAt" => %{"shape" => "DateTime"}, "ElasticIp" => %{"shape" => "String"}, "BlockDeviceMappings" => %{"shape" => "BlockDeviceMappings"}, "PrivateDns" => %{"shape" => "String"}, "SecurityGroupIds" => %{"shape" => "Strings"}, "SshKeyName" => %{"shape" => "String"}, "InstanceId" => %{"shape" => "String"}, "Os" => %{"shape" => "String"}, "StackId" => %{"shape" => "String"}, "AmiId" => %{"shape" => "String"}, "Ec2InstanceId" => %{"shape" => "String"}, "InstanceProfileArn" => %{"shape" => "String"}, "RegisteredBy" => %{"shape" => "String"}, "PublicDns" => %{"shape" => "String"}, "SshHostDsaKeyFingerprint" => %{"shape" => "String"}, "PublicIp" => %{"shape" => "String"}, "Hostname" => %{"shape" => "String"}, "RootDeviceType" => %{"shape" => "RootDeviceType"}, "ReportedAgentVersion" => %{"shape" => "String"}, "Platform" => %{"shape" => "String"}, "AutoScalingType" => %{"shape" => "AutoScalingType"}, "Arn" => %{"shape" => "String"}, "InstallUpdatesOnBoot" => %{"shape" => "Boolean"}, "AvailabilityZone" => %{"shape" => "String"}, "LastServiceErrorId" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}, "SubnetId" => %{"shape" => "String"}, "AgentVersion" => %{"shape" => "String"}, "SshHostRsaKeyFingerprint" => %{"shape" => "String"}, "PrivateIp" => %{"shape" => "String"}, "EcsClusterArn" => %{"shape" => "String"}, "EcsContainerInstanceArn" => %{"shape" => "String"}, "Tenancy" => %{"shape" => "String"}, "RootDeviceVolumeId" => %{"shape" => "String"}, "EbsOptimized" => %{"shape" => "Boolean"}, "LayerIds" => %{"shape" => "Strings"}, "InstanceType" => %{"shape" => "String"}, "Architecture" => %{"shape" => "Architecture"}, "InfrastructureClass" => %{"shape" => "String"}, "VirtualizationType" => %{"shape" => "VirtualizationType"}}, "type" => "structure"}, "Commands" => %{"member" => %{"shape" => "Command"}, "type" => "list"}}
  end
end