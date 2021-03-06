defmodule Baiji.EFS do
  @moduledoc """
  Amazon Elastic File System

  Amazon Elastic File System (Amazon EFS) provides simple, scalable file
  storage for use with Amazon EC2 instances in the AWS Cloud. With Amazon
  EFS, storage capacity is elastic, growing and shrinking automatically as
  you add and remove files, so your applications have the storage they need,
  when they need it. For more information, see the [User
  Guide](http://docs.aws.amazon.com/efs/latest/ug/api-reference.html).
  """

  @doc """
  Creates a new, empty file system. The operation requires a creation token
  in the request that Amazon EFS uses to ensure idempotent creation (calling
  the operation with same creation token has no effect). If a file system
  does not currently exist that is owned by the caller's AWS account with the
  specified creation token, this operation does the following:

  <ul> <li> Creates a new, empty file system. The file system will have an
  Amazon EFS assigned ID, and an initial lifecycle state `creating`.

  </li> <li> Returns with the description of the created file system.

  </li> </ul> Otherwise, this operation returns a `FileSystemAlreadyExists`
  error with the ID of the existing file system.

  <note> For basic use cases, you can use a randomly generated UUID for the
  creation token.

  </note> The idempotent operation allows you to retry a `CreateFileSystem`
  call without risk of creating an extra file system. This can happen when an
  initial call fails in a way that leaves it uncertain whether or not a file
  system was actually created. An example might be that a transport level
  timeout occurred or your connection was reset. As long as you use the same
  creation token, if the initial call had succeeded in creating a file
  system, the client can learn of its existence from the
  `FileSystemAlreadyExists` error.

  <note> The `CreateFileSystem` call returns while the file system's
  lifecycle state is still `creating`. You can check the file system creation
  status by calling the `DescribeFileSystems` operation, which among other
  things returns the file system state.

  </note> This operation also takes an optional `PerformanceMode` parameter
  that you choose for your file system. We recommend `generalPurpose`
  performance mode for most file systems. File systems using the `maxIO`
  performance mode can scale to higher levels of aggregate throughput and
  operations per second with a tradeoff of slightly higher latencies for most
  file operations. The performance mode can't be changed after the file
  system has been created. For more information, see [Amazon EFS: Performance
  Modes](http://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html).

  After the file system is fully created, Amazon EFS sets its lifecycle state
  to `available`, at which point you can create one or more mount targets for
  the file system in your VPC. For more information, see `CreateMountTarget`.
  You mount your Amazon EFS file system on an EC2 instances in your VPC via
  the mount target. For more information, see [Amazon EFS: How it
  Works](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

  This operation requires permissions for the
  `elasticfilesystem:CreateFileSystem` action.
  """
  def create_file_system(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/file-systems",
      input:            input,
      options:          options,
      action:           "CreateFileSystem",
      method:           :post,
      input_shape:      "CreateFileSystemRequest",
      output_shape:     "FileSystemDescription",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a mount target for a file system. You can then mount the file
  system on EC2 instances via the mount target.

  You can create one mount target in each Availability Zone in your VPC. All
  EC2 instances in a VPC within a given Availability Zone share a single
  mount target for a given file system. If you have multiple subnets in an
  Availability Zone, you create a mount target in one of the subnets. EC2
  instances do not need to be in the same subnet as the mount target in order
  to access their file system. For more information, see [Amazon EFS: How it
  Works](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

  In the request, you also specify a file system ID for which you are
  creating the mount target and the file system's lifecycle state must be
  `available`. For more information, see `DescribeFileSystems`.

  In the request, you also provide a subnet ID, which determines the
  following:

  <ul> <li> VPC in which Amazon EFS creates the mount target

  </li> <li> Availability Zone in which Amazon EFS creates the mount target

  </li> <li> IP address range from which Amazon EFS selects the IP address of
  the mount target (if you don't specify an IP address in the request)

  </li> </ul> After creating the mount target, Amazon EFS returns a response
  that includes, a `MountTargetId` and an `IpAddress`. You use this IP
  address when mounting the file system in an EC2 instance. You can also use
  the mount target's DNS name when mounting the file system. The EC2 instance
  on which you mount the file system via the mount target can resolve the
  mount target's DNS name to its IP address. For more information, see [How
  it Works: Implementation
  Overview](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation).

  Note that you can create mount targets for a file system in only one VPC,
  and there can be only one mount target per Availability Zone. That is, if
  the file system already has one or more mount targets created for it, the
  subnet specified in the request to add another mount target must meet the
  following requirements:

  <ul> <li> Must belong to the same VPC as the subnets of the existing mount
  targets

  </li> <li> Must not be in the same Availability Zone as any of the subnets
  of the existing mount targets

  </li> </ul> If the request satisfies the requirements, Amazon EFS does the
  following:

  <ul> <li> Creates a new mount target in the specified subnet.

  </li> <li> Also creates a new network interface in the subnet as follows:

  <ul> <li> If the request provides an `IpAddress`, Amazon EFS assigns that
  IP address to the network interface. Otherwise, Amazon EFS assigns a free
  address in the subnet (in the same way that the Amazon EC2
  `CreateNetworkInterface` call does when a request does not specify a
  primary private IP address).

  </li> <li> If the request provides `SecurityGroups`, this network interface
  is associated with those security groups. Otherwise, it belongs to the
  default security group for the subnet's VPC.

  </li> <li> Assigns the description `Mount target *fsmt-id* for file system
  *fs-id* ` where ` *fsmt-id* ` is the mount target ID, and ` *fs-id* ` is
  the `FileSystemId`.

  </li> <li> Sets the `requesterManaged` property of the network interface to
  `true`, and the `requesterId` value to `EFS`.

  </li> </ul> Each Amazon EFS mount target has one corresponding
  requester-managed EC2 network interface. After the network interface is
  created, Amazon EFS sets the `NetworkInterfaceId` field in the mount
  target's description to the network interface ID, and the `IpAddress` field
  to its address. If network interface creation fails, the entire
  `CreateMountTarget` operation fails.

  </li> </ul> <note> The `CreateMountTarget` call returns only after creating
  the network interface, but while the mount target state is still
  `creating`, you can check the mount target creation status by calling the
  `DescribeMountTargets` operation, which among other things returns the
  mount target state.

  </note> We recommend you create a mount target in each of the Availability
  Zones. There are cost considerations for using a file system in an
  Availability Zone through a mount target created in another Availability
  Zone. For more information, see [Amazon EFS](http://aws.amazon.com/efs/).
  In addition, by always using a mount target local to the instance's
  Availability Zone, you eliminate a partial failure scenario. If the
  Availability Zone in which your mount target is created goes down, then you
  won't be able to access your file system through that mount target.

  This operation requires permissions for the following action on the file
  system:

  <ul> <li> `elasticfilesystem:CreateMountTarget`

  </li> </ul> This operation also requires permissions for the following
  Amazon EC2 actions:

  <ul> <li> `ec2:DescribeSubnets`

  </li> <li> `ec2:DescribeNetworkInterfaces`

  </li> <li> `ec2:CreateNetworkInterface`

  </li> </ul>
  """
  def create_mount_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/mount-targets",
      input:            input,
      options:          options,
      action:           "CreateMountTarget",
      method:           :post,
      input_shape:      "CreateMountTargetRequest",
      output_shape:     "MountTargetDescription",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates or overwrites tags associated with a file system. Each tag is a
  key-value pair. If a tag key specified in the request already exists on the
  file system, this operation overwrites its value with the value provided in
  the request. If you add the `Name` tag to your file system, Amazon EFS
  returns it in the response to the `DescribeFileSystems` operation.

  This operation requires permission for the `elasticfilesystem:CreateTags`
  action.
  """
  def create_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/create-tags/{FileSystemId}",
      input:            input,
      options:          options,
      action:           "CreateTags",
      method:           :post,
      input_shape:      "CreateTagsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a file system, permanently severing access to its contents. Upon
  return, the file system no longer exists and you can't access any contents
  of the deleted file system.

  You can't delete a file system that is in use. That is, if the file system
  has any mount targets, you must first delete them. For more information,
  see `DescribeMountTargets` and `DeleteMountTarget`.

  <note> The `DeleteFileSystem` call returns while the file system state is
  still `deleting`. You can check the file system deletion status by calling
  the `DescribeFileSystems` operation, which returns a list of file systems
  in your account. If you pass file system ID or creation token for the
  deleted file system, the `DescribeFileSystems` returns a `404
  FileSystemNotFound` error.

  </note> This operation requires permissions for the
  `elasticfilesystem:DeleteFileSystem` action.
  """
  def delete_file_system(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/file-systems/{FileSystemId}",
      input:            input,
      options:          options,
      action:           "DeleteFileSystem",
      method:           :delete,
      input_shape:      "DeleteFileSystemRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified mount target.

  This operation forcibly breaks any mounts of the file system via the mount
  target that is being deleted, which might disrupt instances or applications
  using those mounts. To avoid applications getting cut off abruptly, you
  might consider unmounting any mounts of the mount target, if feasible. The
  operation also deletes the associated network interface. Uncommitted writes
  may be lost, but breaking a mount target using this operation does not
  corrupt the file system itself. The file system you created remains. You
  can mount an EC2 instance in your VPC via another mount target.

  This operation requires permissions for the following action on the file
  system:

  <ul> <li> `elasticfilesystem:DeleteMountTarget`

  </li> </ul> <note> The `DeleteMountTarget` call returns while the mount
  target state is still `deleting`. You can check the mount target deletion
  by calling the `DescribeMountTargets` operation, which returns a list of
  mount target descriptions for the given file system.

  </note> The operation also requires permissions for the following Amazon
  EC2 action on the mount target's network interface:

  <ul> <li> `ec2:DeleteNetworkInterface`

  </li> </ul>
  """
  def delete_mount_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/mount-targets/{MountTargetId}",
      input:            input,
      options:          options,
      action:           "DeleteMountTarget",
      method:           :delete,
      input_shape:      "DeleteMountTargetRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified tags from a file system. If the `DeleteTags` request
  includes a tag key that does not exist, Amazon EFS ignores it and doesn't
  cause an error. For more information about tags and related restrictions,
  see [Tag
  Restrictions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.

  This operation requires permissions for the `elasticfilesystem:DeleteTags`
  action.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/delete-tags/{FileSystemId}",
      input:            input,
      options:          options,
      action:           "DeleteTags",
      method:           :post,
      input_shape:      "DeleteTagsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the description of a specific Amazon EFS file system if either the
  file system `CreationToken` or the `FileSystemId` is provided. Otherwise,
  it returns descriptions of all file systems owned by the caller's AWS
  account in the AWS Region of the endpoint that you're calling.

  When retrieving all file system descriptions, you can optionally specify
  the `MaxItems` parameter to limit the number of descriptions in a response.
  If more file system descriptions remain, Amazon EFS returns a `NextMarker`,
  an opaque token, in the response. In this case, you should send a
  subsequent request with the `Marker` request parameter set to the value of
  `NextMarker`.

  To retrieve a list of your file system descriptions, this operation is used
  in an iterative process, where `DescribeFileSystems` is called first
  without the `Marker` and then the operation continues to call it with the
  `Marker` parameter set to the value of the `NextMarker` from the previous
  response until the response has no `NextMarker`.

  The implementation may return fewer than `MaxItems` file system
  descriptions while still including a `NextMarker` value.

  The order of file systems returned in the response of one
  `DescribeFileSystems` call and the order of file systems returned across
  the responses of a multi-call iteration is unspecified.

  This operation requires permissions for the
  `elasticfilesystem:DescribeFileSystems` action.
  """
  def describe_file_systems(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/file-systems",
      input:            input,
      options:          options,
      action:           "DescribeFileSystems",
      method:           :get,
      input_shape:      "DescribeFileSystemsRequest",
      output_shape:     "DescribeFileSystemsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the security groups currently in effect for a mount target. This
  operation requires that the network interface of the mount target has been
  created and the lifecycle state of the mount target is not `deleted`.

  This operation requires permissions for the following actions:

  <ul> <li> `elasticfilesystem:DescribeMountTargetSecurityGroups` action on
  the mount target's file system.

  </li> <li> `ec2:DescribeNetworkInterfaceAttribute` action on the mount
  target's network interface.

  </li> </ul>
  """
  def describe_mount_target_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
      input:            input,
      options:          options,
      action:           "DescribeMountTargetSecurityGroups",
      method:           :get,
      input_shape:      "DescribeMountTargetSecurityGroupsRequest",
      output_shape:     "DescribeMountTargetSecurityGroupsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the descriptions of all the current mount targets, or a specific
  mount target, for a file system. When requesting all of the current mount
  targets, the order of mount targets returned in the response is
  unspecified.

  This operation requires permissions for the
  `elasticfilesystem:DescribeMountTargets` action, on either the file system
  ID that you specify in `FileSystemId`, or on the file system of the mount
  target that you specify in `MountTargetId`.
  """
  def describe_mount_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/mount-targets",
      input:            input,
      options:          options,
      action:           "DescribeMountTargets",
      method:           :get,
      input_shape:      "DescribeMountTargetsRequest",
      output_shape:     "DescribeMountTargetsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the tags associated with a file system. The order of tags returned
  in the response of one `DescribeTags` call and the order of tags returned
  across the responses of a multi-call iteration (when using pagination) is
  unspecified.

  This operation requires permissions for the
  `elasticfilesystem:DescribeTags` action.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/tags/{FileSystemId}/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      method:           :get,
      input_shape:      "DescribeTagsRequest",
      output_shape:     "DescribeTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the set of security groups in effect for a mount target.

  When you create a mount target, Amazon EFS also creates a new network
  interface. For more information, see `CreateMountTarget`. This operation
  replaces the security groups in effect for the network interface associated
  with a mount target, with the `SecurityGroups` provided in the request.
  This operation requires that the network interface of the mount target has
  been created and the lifecycle state of the mount target is not `deleted`.

  The operation requires permissions for the following actions:

  <ul> <li> `elasticfilesystem:ModifyMountTargetSecurityGroups` action on the
  mount target's file system.

  </li> <li> `ec2:ModifyNetworkInterfaceAttribute` action on the mount
  target's network interface.

  </li> </ul>
  """
  def modify_mount_target_security_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
      input:            input,
      options:          options,
      action:           "ModifyMountTargetSecurityGroups",
      method:           :put,
      input_shape:      "ModifyMountTargetSecurityGroupsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "elasticfilesystem",
      endpoint_prefix:  "elasticfilesystem",
      type:             :rest_json,
      version:          "2015-02-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"DeleteFileSystemRequest" => %{"members" => %{"FileSystemId" => %{"location" => "uri", "locationName" => "FileSystemId", "shape" => "FileSystemId"}}, "required" => ["FileSystemId"], "type" => "structure"}, "CreationToken" => %{"max" => 64, "min" => 1, "type" => "string"}, "TagKeys" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "MountTargetNotFound" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "FileSystemAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "FileSystemId" => %{"shape" => "FileSystemId"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode", "FileSystemId"], "type" => "structure"}, "DeleteMountTargetRequest" => %{"members" => %{"MountTargetId" => %{"location" => "uri", "locationName" => "MountTargetId", "shape" => "MountTargetId"}}, "required" => ["MountTargetId"], "type" => "structure"}, "MountTargetDescription" => %{"members" => %{"FileSystemId" => %{"shape" => "FileSystemId"}, "IpAddress" => %{"shape" => "IpAddress"}, "LifeCycleState" => %{"shape" => "LifeCycleState"}, "MountTargetId" => %{"shape" => "MountTargetId"}, "NetworkInterfaceId" => %{"shape" => "NetworkInterfaceId"}, "OwnerId" => %{"shape" => "AwsAccountId"}, "SubnetId" => %{"shape" => "SubnetId"}}, "required" => ["MountTargetId", "FileSystemId", "SubnetId", "LifeCycleState"], "type" => "structure"}, "IncorrectMountTargetState" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "MountTargetConflict" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "DescribeMountTargetSecurityGroupsRequest" => %{"members" => %{"MountTargetId" => %{"location" => "uri", "locationName" => "MountTargetId", "shape" => "MountTargetId"}}, "required" => ["MountTargetId"], "type" => "structure"}, "DescribeFileSystemsResponse" => %{"members" => %{"FileSystems" => %{"shape" => "FileSystemDescriptions"}, "Marker" => %{"shape" => "Marker"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "FileSystemNotFound" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "MountTargetId" => %{"type" => "string"}, "DescribeMountTargetsResponse" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "MountTargets" => %{"shape" => "MountTargetDescriptions"}, "NextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "SecurityGroup" => %{"type" => "string"}, "CreateMountTargetRequest" => %{"members" => %{"FileSystemId" => %{"shape" => "FileSystemId"}, "IpAddress" => %{"shape" => "IpAddress"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}, "SubnetId" => %{"shape" => "SubnetId"}}, "required" => ["FileSystemId", "SubnetId"], "type" => "structure"}, "IncorrectFileSystemLifeCycleState" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "SecurityGroupNotFound" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "MountTargetDescriptions" => %{"member" => %{"shape" => "MountTargetDescription"}, "type" => "list"}, "FileSystemInUse" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "SecurityGroupLimitExceeded" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "NetworkInterfaceId" => %{"type" => "string"}, "ErrorCode" => %{"min" => 1, "type" => "string"}, "NoFreeAddressesInSubnet" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "SecurityGroups" => %{"max" => 5, "member" => %{"shape" => "SecurityGroup"}, "type" => "list"}, "KmsKeyId" => %{"max" => 2048, "min" => 1, "type" => "string"}, "Tags" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "FileSystemDescriptions" => %{"member" => %{"shape" => "FileSystemDescription"}, "type" => "list"}, "SubnetNotFound" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "TagValue" => %{"max" => 256, "type" => "string"}, "IpAddressInUse" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "Encrypted" => %{"type" => "boolean"}, "LifeCycleState" => %{"enum" => ["creating", "available", "deleting", "deleted"], "type" => "string"}, "DescribeTagsRequest" => %{"members" => %{"FileSystemId" => %{"location" => "uri", "locationName" => "FileSystemId", "shape" => "FileSystemId"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "Marker"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "MaxItems"}}, "required" => ["FileSystemId"], "type" => "structure"}, "DescribeTagsResponse" => %{"members" => %{"Marker" => %{"shape" => "Marker"}, "NextMarker" => %{"shape" => "Marker"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["Tags"], "type" => "structure"}, "InternalServerError" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "SubnetId" => %{"type" => "string"}, "BadRequest" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "IpAddress" => %{"type" => "string"}, "MaxItems" => %{"min" => 1, "type" => "integer"}, "PerformanceMode" => %{"enum" => ["generalPurpose", "maxIO"], "type" => "string"}, "Marker" => %{"type" => "string"}, "ModifyMountTargetSecurityGroupsRequest" => %{"members" => %{"MountTargetId" => %{"location" => "uri", "locationName" => "MountTargetId", "shape" => "MountTargetId"}, "SecurityGroups" => %{"shape" => "SecurityGroups"}}, "required" => ["MountTargetId"], "type" => "structure"}, "AwsAccountId" => %{"type" => "string"}, "DeleteTagsRequest" => %{"members" => %{"FileSystemId" => %{"location" => "uri", "locationName" => "FileSystemId", "shape" => "FileSystemId"}, "TagKeys" => %{"shape" => "TagKeys"}}, "required" => ["FileSystemId", "TagKeys"], "type" => "structure"}, "CreateTagsRequest" => %{"members" => %{"FileSystemId" => %{"location" => "uri", "locationName" => "FileSystemId", "shape" => "FileSystemId"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["FileSystemId", "Tags"], "type" => "structure"}, "DescribeMountTargetSecurityGroupsResponse" => %{"members" => %{"SecurityGroups" => %{"shape" => "SecurityGroups"}}, "required" => ["SecurityGroups"], "type" => "structure"}, "DescribeMountTargetsRequest" => %{"members" => %{"FileSystemId" => %{"location" => "querystring", "locationName" => "FileSystemId", "shape" => "FileSystemId"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "Marker"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "MaxItems"}, "MountTargetId" => %{"location" => "querystring", "locationName" => "MountTargetId", "shape" => "MountTargetId"}}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "NetworkInterfaceLimitExceeded" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "FileSystemSizeValue" => %{"min" => 0, "type" => "long"}, "DependencyTimeout" => %{"error" => %{"httpStatusCode" => 504}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "DescribeFileSystemsRequest" => %{"members" => %{"CreationToken" => %{"location" => "querystring", "locationName" => "CreationToken", "shape" => "CreationToken"}, "FileSystemId" => %{"location" => "querystring", "locationName" => "FileSystemId", "shape" => "FileSystemId"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "Marker"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "MaxItems"}}, "type" => "structure"}, "FileSystemDescription" => %{"members" => %{"CreationTime" => %{"shape" => "Timestamp"}, "CreationToken" => %{"shape" => "CreationToken"}, "Encrypted" => %{"shape" => "Encrypted"}, "FileSystemId" => %{"shape" => "FileSystemId"}, "KmsKeyId" => %{"shape" => "KmsKeyId"}, "LifeCycleState" => %{"shape" => "LifeCycleState"}, "Name" => %{"shape" => "TagValue"}, "NumberOfMountTargets" => %{"shape" => "MountTargetCount"}, "OwnerId" => %{"shape" => "AwsAccountId"}, "PerformanceMode" => %{"shape" => "PerformanceMode"}, "SizeInBytes" => %{"shape" => "FileSystemSize"}}, "required" => ["OwnerId", "CreationToken", "FileSystemId", "CreationTime", "LifeCycleState", "NumberOfMountTargets", "SizeInBytes", "PerformanceMode"], "type" => "structure"}, "MountTargetCount" => %{"min" => 0, "type" => "integer"}, "FileSystemId" => %{"type" => "string"}, "FileSystemLimitExceeded" => %{"error" => %{"httpStatusCode" => 403}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "UnsupportedAvailabilityZone" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "required" => ["ErrorCode"], "type" => "structure"}, "FileSystemSize" => %{"members" => %{"Timestamp" => %{"shape" => "Timestamp"}, "Value" => %{"shape" => "FileSystemSizeValue"}}, "required" => ["Value"], "type" => "structure"}, "CreateFileSystemRequest" => %{"members" => %{"CreationToken" => %{"shape" => "CreationToken"}, "Encrypted" => %{"shape" => "Encrypted"}, "KmsKeyId" => %{"shape" => "KmsKeyId"}, "PerformanceMode" => %{"shape" => "PerformanceMode"}}, "required" => ["CreationToken"], "type" => "structure"}}
  end
end