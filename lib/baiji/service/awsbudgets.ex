defmodule Baiji.AWSBudgets do
  @moduledoc """
  All public APIs for AWS Budgets
  """
  
  @doc """
  Create a new budget
  """
  def create_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateBudget",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Create a new Notification with subscribers for a budget
  """
  def create_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateNotification",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Create a new Subscriber for a notification
  """
  def create_subscriber(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateSubscriber",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Delete a budget and related notifications
  """
  def delete_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteBudget",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Delete a notification and related subscribers
  """
  def delete_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteNotification",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Delete a Subscriber for a notification
  """
  def delete_subscriber(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteSubscriber",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Get a single budget
  """
  def describe_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeBudget",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Get all budgets for an account
  """
  def describe_budgets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeBudgets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Get notifications of a budget
  """
  def describe_notifications_for_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeNotificationsForBudget",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Get subscribers of a notification
  """
  def describe_subscribers_for_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeSubscribersForNotification",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Update the information of a budget already created
  """
  def update_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateBudget",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Update the information about a notification already created
  """
  def update_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateNotification",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Update a subscriber
  """
  def update_subscriber(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateSubscriber",
      type:     :json,
      method:   :post
    }
  end
  
end