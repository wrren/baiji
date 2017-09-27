defmodule Baiji.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service
  """
  
  @doc """
  Adds or overwrites one or more tags for the specified AWS CloudHSM
  resource.

  Each tag consists of a key and a value. Tag keys must be unique to each
  resource.
  """
  def add_tags_to_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AddTagsToResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a high-availability partition group. A high-availability partition
  group is a group of partitions that spans multiple physical HSMs.
  """
  def create_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateHapg",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an uninitialized HSM instance.

  There is an upfront fee charged for each HSM instance that you create with
  the `CreateHsm` operation. If you accidentally provision an HSM and want to
  request a refund, delete the instance using the `DeleteHsm` operation, go
  to the [AWS Support Center](https://console.aws.amazon.com/support/home#/),
  create a new case, and select **Account and Billing Support**.

  <important> It can take up to 20 minutes to create and provision an HSM.
  You can monitor the status of the HSM with the `DescribeHsm` operation. The
  HSM is ready to be initialized when the status changes to `RUNNING`.

  </important>
  """
  def create_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateHsm",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an HSM client.
  """
  def create_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateLunaClient",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a high-availability partition group.
  """
  def delete_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteHapg",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes an HSM. After completion, this operation cannot be undone and your
  key material cannot be recovered.
  """
  def delete_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteHsm",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a client.
  """
  def delete_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteLunaClient",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a high-availability partition group.
  """
  def describe_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeHapg",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about an HSM. You can identify the HSM by its ARN or
  its serial number.
  """
  def describe_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeHsm",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about an HSM client.
  """
  def describe_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeLunaClient",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets the configuration files necessary to connect to all high availability
  partition groups the client is associated with.
  """
  def get_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetConfig",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the Availability Zones that have available AWS CloudHSM capacity.
  """
  def list_available_zones(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListAvailableZones",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the high-availability partition groups for the account.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListHapgs` to retrieve
  the next set of items.
  """
  def list_hapgs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListHapgs",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves the identifiers of all of the HSMs provisioned for the current
  customer.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListHsms` to retrieve
  the next set of items.
  """
  def list_hsms(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListHsms",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all of the clients.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListLunaClients` to
  retrieve the next set of items.
  """
  def list_luna_clients(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListLunaClients",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a list of all tags for the specified AWS CloudHSM resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListTagsForResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies an existing high-availability partition group.
  """
  def modify_hapg(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyHapg",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies an HSM.

  <important> This operation can result in the HSM being offline for up to 15
  minutes while the AWS CloudHSM service is reconfigured. If you are
  modifying a production HSM, you should ensure that your AWS CloudHSM
  service is configured for high availability, and consider executing this
  operation during a maintenance window.

  </important>
  """
  def modify_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyHsm",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the certificate used by the client.

  This action can potentially start a workflow to install the new certificate
  on the client's HSMs.
  """
  def modify_luna_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ModifyLunaClient",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Removes one or more tags from the specified AWS CloudHSM resource.

  To remove a tag, specify only the tag key to remove (not the value). To
  overwrite the value for an existing tag, use `AddTagsToResource`.
  """
  def remove_tags_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RemoveTagsFromResource",
      type:     :json,
      method:   :post
    }
  end
  
end