defmodule Baiji.WAFRegional do
  @moduledoc """
  This is the *AWS WAF Regional API Reference* for using AWS WAF with Elastic
  Load Balancing (ELB) Application Load Balancers. The AWS WAF actions and
  data types listed in the reference are available for protecting Application
  Load Balancers. You can use these actions and data types by means of the
  endpoints listed in [AWS Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).
  This guide is for developers who need detailed information about the AWS
  WAF API actions, data types, and errors. For detailed information about AWS
  WAF features and an overview of how to use the AWS WAF API, see the [AWS
  WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  
  @doc """
  Returns an array of `SqlInjectionMatchSet` objects.
  """
  def list_sql_injection_match_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListSqlInjectionMatchSets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes an `IPSet`. You can't delete an `IPSet` if it's still
  used in any `Rules` or if it still includes any IP addresses.

  If you just want to remove an `IPSet` from a `Rule`, use `UpdateRule`.

  To permanently delete an `IPSet` from AWS WAF, perform the following steps:

  <ol> <li> Update the `IPSet` to remove IP address ranges, if any. For more
  information, see `UpdateIPSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteIPSet` request.

  </li> <li> Submit a `DeleteIPSet` request.

  </li> </ol>
  """
  def delete_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteIPSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Associates a web ACL with a resource.
  """
  def associate_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AssociateWebACL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `RateBasedRule` that is specified by the `RuleId` that you
  included in the `GetRateBasedRule` request.
  """
  def get_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetRateBasedRule",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of `RuleSummary` objects.
  """
  def list_rate_based_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListRateBasedRules",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes an `XssMatchSet`. You can't delete an `XssMatchSet` if
  it's still used in any `Rules` or if it still contains any `XssMatchTuple`
  objects.

  If you just want to remove an `XssMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete an `XssMatchSet` from AWS WAF, perform the following
  steps:

  <ol> <li> Update the `XssMatchSet` to remove filters, if any. For more
  information, see `UpdateXssMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteXssMatchSet` request.

  </li> <li> Submit a `DeleteXssMatchSet` request.

  </li> </ol>
  """
  def delete_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteXssMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of IP addresses currently being blocked by the
  `RateBasedRule` that is specified by the `RuleId`. The maximum number of
  managed keys that will be blocked is 10,000. If more than 10,000 addresses
  exceed the rate limit, the 10,000 addresses with the highest rates will be
  blocked.
  """
  def get_rate_based_rule_managed_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetRateBasedRuleManagedKeys",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `Rule` that is specified by the `RuleId` that you included in
  the `GetRule` request.
  """
  def get_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetRule",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes a `SizeConstraintSet`. You can't delete a
  `SizeConstraintSet` if it's still used in any `Rules` or if it still
  includes any `SizeConstraint` objects (any filters).

  If you just want to remove a `SizeConstraintSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SizeConstraintSet`, perform the following steps:

  <ol> <li> Update the `SizeConstraintSet` to remove filters, if any. For
  more information, see `UpdateSizeConstraintSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteSizeConstraintSet` request.

  </li> <li> Submit a `DeleteSizeConstraintSet` request.

  </li> </ol>
  """
  def delete_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteSizeConstraintSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes a `Rule`. You can't delete a `Rule` if it's still used
  in any `WebACL` objects or if it still includes any predicates, such as
  `ByteMatchSet` objects.

  If you just want to remove a `Rule` from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `Rule` from AWS WAF, perform the following steps:

  <ol> <li> Update the `Rule` to remove predicates, if any. For more
  information, see `UpdateRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteRule` request.

  </li> <li> Submit a `DeleteRule` request.

  </li> </ol>
  """
  def delete_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteRule",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `Predicate` objects in a `Rule`. Each `Predicate` object
  identifies a predicate, such as a `ByteMatchSet` or an `IPSet`, that
  specifies the web requests that you want to allow, block, or count. If you
  add more than one predicate to a `Rule`, a request must match all of the
  specifications to be allowed, blocked, or counted. For example, suppose you
  add the following to a `Rule`:

  <ul> <li> A `ByteMatchSet` that matches the value `BadBot` in the
  `User-Agent` header

  </li> <li> An `IPSet` that matches the IP address `192.0.2.44`

  </li> </ul> You then add the `Rule` to a `WebACL` and specify that you want
  to block requests that satisfy the `Rule`. For a request to be blocked, the
  `User-Agent` header in the request must contain the value `BadBot` *and*
  the request must originate from the IP address 192.0.2.44.

  To create and configure a `Rule`, perform the following steps:

  <ol> <li> Create and update the predicates that you want to include in the
  `Rule`.

  </li> <li> Create the `Rule`. See `CreateRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateRule` request.

  </li> <li> Submit an `UpdateRule` request to add predicates to the `Rule`.

  </li> <li> Create and update a `WebACL` that contains the `Rule`. See
  `CreateWebACL`.

  </li> </ol> If you want to replace one `ByteMatchSet` or `IPSet` with
  another, you delete the existing one and add the new one.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateRule",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `SqlInjectionMatchSet` that is specified by
  `SqlInjectionMatchSetId`.
  """
  def get_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetSqlInjectionMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a `SizeConstraintSet`. You then use `UpdateSizeConstraintSet` to
  identify the part of a web request that you want AWS WAF to check for
  length, such as the length of the `User-Agent` header or the length of the
  query string. For example, you can create a `SizeConstraintSet` that
  matches any requests that have a query string that is longer than 100
  bytes. You can then configure AWS WAF to reject those requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateSizeConstraintSet` request.

  </li> <li> Submit a `CreateSizeConstraintSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.

  </li> <li> Submit an `UpdateSizeConstraintSet` request to specify the part
  of the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateSizeConstraintSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a `RateBasedRule`. The `RateBasedRule` contains a `RateLimit`,
  which specifies the maximum number of requests that AWS WAF allows from a
  specified IP address in a five-minute period. The `RateBasedRule` also
  contains the `IPSet` objects, `ByteMatchSet` objects, and other predicates
  that identify the requests that you want to count or block if these
  requests exceed the `RateLimit`.

  If you add more than one predicate to a `RateBasedRule`, a request not only
  must exceed the `RateLimit`, but it also must match all the specifications
  to be counted or blocked. For example, suppose you add the following to a
  `RateBasedRule`:

  <ul> <li> An `IPSet` that matches the IP address `192.0.2.44/32`

  </li> <li> A `ByteMatchSet` that matches `BadBot` in the `User-Agent`
  header

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  You then add the `RateBasedRule` to a `WebACL` and specify that you want to
  block requests that meet the conditions in the rule. For a request to be
  blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent`
  header in the request must contain the value `BadBot`. Further, requests
  that match these two conditions must be received at a rate of more than
  15,000 requests every five minutes. If both conditions are met and the rate
  is exceeded, AWS WAF blocks the requests. If the rate drops below 15,000
  for a five-minute period, AWS WAF no longer blocks the requests.

  As a second example, suppose you want to limit requests to a particular
  page on your site. To do this, you could add the following to a
  `RateBasedRule`:

  <ul> <li> A `ByteMatchSet` with `FieldToMatch` of `URI`

  </li> <li> A `PositionalConstraint` of `STARTS_WITH`

  </li> <li> A `TargetString` of `login`

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  By adding this `RateBasedRule` to a `WebACL`, you could limit requests to
  your login page without affecting the rest of your site.

  To create and configure a `RateBasedRule`, perform the following steps:

  <ol> <li> Create and update the predicates that you want to include in the
  rule. For more information, see `CreateByteMatchSet`, `CreateIPSet`, and
  `CreateSqlInjectionMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateRule` request.

  </li> <li> Submit a `CreateRateBasedRule` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateRule` request.

  </li> <li> Submit an `UpdateRateBasedRule` request to specify the
  predicates that you want to include in the rule.

  </li> <li> Create and update a `WebACL` that contains the `RateBasedRule`.
  For more information, see `CreateWebACL`.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateRateBasedRule",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of `WebACLSummary` objects in the response.
  """
  def list_web_a_c_ls(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListWebACLs",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of `SizeConstraintSetSummary` objects.
  """
  def list_size_constraint_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListSizeConstraintSets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of `RuleSummary` objects.
  """
  def list_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListRules",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the status of a `ChangeToken` that you got by calling
  `GetChangeToken`. `ChangeTokenStatus` is one of the following values:

  <ul> <li> `PROVISIONED`: You requested the change token by calling
  `GetChangeToken`, but you haven't used it yet in a call to create, update,
  or delete an AWS WAF object.

  </li> <li> `PENDING`: AWS WAF is propagating the create, update, or delete
  request to all AWS WAF servers.

  </li> <li> `IN_SYNC`: Propagation is complete.

  </li> </ul>
  """
  def get_change_token_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetChangeTokenStatus",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `ActivatedRule` objects in a `WebACL`. Each `Rule`
  identifies web requests that you want to allow, block, or count. When you
  update a `WebACL`, you specify the following values:

  <ul> <li> A default action for the `WebACL`, either `ALLOW` or `BLOCK`. AWS
  WAF performs the default action if a request doesn't match the criteria in
  any of the `Rules` in a `WebACL`.

  </li> <li> The `Rules` that you want to add and/or delete. If you want to
  replace one `Rule` with another, you delete the existing `Rule` and add the
  new one.

  </li> <li> For each `Rule`, whether you want AWS WAF to allow requests,
  block requests, or count requests that match the conditions in the `Rule`.

  </li> <li> The order in which you want AWS WAF to evaluate the `Rules` in a
  `WebACL`. If you add more than one `Rule` to a `WebACL`, AWS WAF evaluates
  each request against the `Rules` in order based on the value of `Priority`.
  (The `Rule` that has the lowest value for `Priority` is evaluated first.)
  When a web request matches all of the predicates (such as `ByteMatchSets`
  and `IPSets`) in a `Rule`, AWS WAF immediately takes the corresponding
  action, allow or block, and doesn't evaluate the request against the
  remaining `Rules` in the `WebACL`, if any.

  </li> </ul> To create and configure a `WebACL`, perform the following
  steps:

  <ol> <li> Create and update the predicates that you want to include in
  `Rules`. For more information, see `CreateByteMatchSet`,
  `UpdateByteMatchSet`, `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.

  </li> <li> Create and update the `Rules` that you want to include in the
  `WebACL`. For more information, see `CreateRule` and `UpdateRule`.

  </li> <li> Create a `WebACL`. See `CreateWebACL`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateWebACL` request.

  </li> <li> Submit an `UpdateWebACL` request to specify the `Rules` that you
  want to include in the `WebACL`, to specify the default action, and to
  associate the `WebACL` with a CloudFront distribution.

  </li> </ol> Be aware that if you try to add a RATE_BASED rule to a web ACL
  without setting the rule type when first creating the rule, the
  `UpdateWebACL` request will fail because the request tries to add a REGULAR
  rule (the default rule type) with the specified ID, which does not exist.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateWebACL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of `IPSetSummary` objects in the response.
  """
  def list_i_p_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListIPSets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes a `WebACL`. You can't delete a `WebACL` if it still
  contains any `Rules`.

  To delete a `WebACL`, perform the following steps:

  <ol> <li> Update the `WebACL` to remove `Rules`, if any. For more
  information, see `UpdateWebACL`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteWebACL` request.

  </li> <li> Submit a `DeleteWebACL` request.

  </li> </ol>
  """
  def delete_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteWebACL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `SizeConstraintSet` specified by `SizeConstraintSetId`.
  """
  def get_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetSizeConstraintSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet`
  objects, and other predicates that identify the requests that you want to
  block. If you add more than one predicate to a `Rule`, a request must match
  all of the specifications to be allowed or blocked. For example, suppose
  you add the following to a `Rule`:

  <ul> <li> An `IPSet` that matches the IP address `192.0.2.44/32`

  </li> <li> A `ByteMatchSet` that matches `BadBot` in the `User-Agent`
  header

  </li> </ul> You then add the `Rule` to a `WebACL` and specify that you want
  to blocks requests that satisfy the `Rule`. For a request to be blocked, it
  must come from the IP address 192.0.2.44 *and* the `User-Agent` header in
  the request must contain the value `BadBot`.

  To create and configure a `Rule`, perform the following steps:

  <ol> <li> Create and update the predicates that you want to include in the
  `Rule`. For more information, see `CreateByteMatchSet`, `CreateIPSet`, and
  `CreateSqlInjectionMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateRule` request.

  </li> <li> Submit a `CreateRule` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateRule` request.

  </li> <li> Submit an `UpdateRule` request to specify the predicates that
  you want to include in the `Rule`.

  </li> <li> Create and update a `WebACL` that contains the `Rule`. For more
  information, see `CreateWebACL`.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateRule",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `Predicate` objects in a rule and updates the
  `RateLimit` in the rule.

  Each `Predicate` object identifies a predicate, such as a `ByteMatchSet` or
  an `IPSet`, that specifies the web requests that you want to block or
  count. The `RateLimit` specifies the number of requests every five minutes
  that triggers the rule.

  If you add more than one predicate to a `RateBasedRule`, a request must
  match all the predicates and exceed the `RateLimit` to be counted or
  blocked. For example, suppose you add the following to a `RateBasedRule`:

  <ul> <li> An `IPSet` that matches the IP address `192.0.2.44/32`

  </li> <li> A `ByteMatchSet` that matches `BadBot` in the `User-Agent`
  header

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  You then add the `RateBasedRule` to a `WebACL` and specify that you want to
  block requests that satisfy the rule. For a request to be blocked, it must
  come from the IP address 192.0.2.44 *and* the `User-Agent` header in the
  request must contain the value `BadBot`. Further, requests that match these
  two conditions much be received at a rate of more than 15,000 every five
  minutes. If the rate drops below this limit, AWS WAF no longer blocks the
  requests.

  As a second example, suppose you want to limit requests to a particular
  page on your site. To do this, you could add the following to a
  `RateBasedRule`:

  <ul> <li> A `ByteMatchSet` with `FieldToMatch` of `URI`

  </li> <li> A `PositionalConstraint` of `STARTS_WITH`

  </li> <li> A `TargetString` of `login`

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  By adding this `RateBasedRule` to a `WebACL`, you could limit requests to
  your login page without affecting the rest of your site.
  """
  def update_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateRateBasedRule",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `XssMatchTuple` objects (filters) in an `XssMatchSet`.
  For each `XssMatchTuple` object, you specify the following values:

  <ul> <li> `Action`: Whether to insert the object into or delete the object
  from the array. To change a `XssMatchTuple`, you delete the existing object
  and add a new one.

  </li> <li> `FieldToMatch`: The part of web requests that you want AWS WAF
  to inspect and, if you want AWS WAF to inspect a header, the name of the
  header.

  </li> <li> `TextTransformation`: Which text transformation, if any, to
  perform on the web request before inspecting the request for cross-site
  scripting attacks.

  </li> </ul> You use `XssMatchSet` objects to specify which CloudFront
  requests you want to allow, block, or count. For example, if you're
  receiving requests that contain cross-site scripting attacks in the request
  body and you want to block the requests, you can create an `XssMatchSet`
  with the applicable settings, and then configure AWS WAF to block the
  requests.

  To create and configure an `XssMatchSet`, perform the following steps:

  <ol> <li> Submit a `CreateXssMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateXssMatchSet` request to specify the parts of
  web requests that you want AWS WAF to inspect for cross-site scripting
  attacks.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateXssMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a `SqlInjectionMatchSet`, which you use to allow, block, or count
  requests that contain snippets of SQL code in a specified part of web
  requests. AWS WAF searches for character sequences that are likely to be
  malicious strings.

  To create and configure a `SqlInjectionMatchSet`, perform the following
  steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateSqlInjectionMatchSet` request.

  </li> <li> Submit a `CreateSqlInjectionMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateSqlInjectionMatchSet` request.

  </li> <li> Submit an `UpdateSqlInjectionMatchSet` request to specify the
  parts of web requests in which you want to allow, block, or count malicious
  SQL code.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateSqlInjectionMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a `ByteMatchSet`. You then use `UpdateByteMatchSet` to identify the
  part of a web request that you want AWS WAF to inspect, such as the values
  of the `User-Agent` header or the query string. For example, you can create
  a `ByteMatchSet` that matches any requests with `User-Agent` headers that
  contain the string `BadBot`. You can then configure AWS WAF to reject those
  requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateByteMatchSet` request.

  </li> <li> Submit a `CreateByteMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateByteMatchSet` request.

  </li> <li> Submit an `UpdateByteMatchSet` request to specify the part of
  the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateByteMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `SqlInjectionMatchTuple` objects (filters) in a
  `SqlInjectionMatchSet`. For each `SqlInjectionMatchTuple` object, you
  specify the following values:

  <ul> <li> `Action`: Whether to insert the object into or delete the object
  from the array. To change a `SqlInjectionMatchTuple`, you delete the
  existing object and add a new one.

  </li> <li> `FieldToMatch`: The part of web requests that you want AWS WAF
  to inspect and, if you want AWS WAF to inspect a header, the name of the
  header.

  </li> <li> `TextTransformation`: Which text transformation, if any, to
  perform on the web request before inspecting the request for snippets of
  malicious SQL code.

  </li> </ul> You use `SqlInjectionMatchSet` objects to specify which
  CloudFront requests you want to allow, block, or count. For example, if
  you're receiving requests that contain snippets of SQL code in the query
  string and you want to block the requests, you can create a
  `SqlInjectionMatchSet` with the applicable settings, and then configure AWS
  WAF to block the requests.

  To create and configure a `SqlInjectionMatchSet`, perform the following
  steps:

  <ol> <li> Submit a `CreateSqlInjectionMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateSqlInjectionMatchSet` request to specify the
  parts of web requests that you want AWS WAF to inspect for snippets of SQL
  code.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateSqlInjectionMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an `XssMatchSet`, which you use to allow, block, or count requests
  that contain cross-site scripting attacks in the specified part of web
  requests. AWS WAF searches for character sequences that are likely to be
  malicious strings.

  To create and configure an `XssMatchSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateXssMatchSet` request.

  </li> <li> Submit a `CreateXssMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateXssMatchSet` request.

  </li> <li> Submit an `UpdateXssMatchSet` request to specify the parts of
  web requests in which you want to allow, block, or count cross-site
  scripting attacks.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateXssMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the web ACL for the specified resource.
  """
  def get_web_a_c_l_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetWebACLForResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `ByteMatchTuple` objects (filters) in a `ByteMatchSet`.
  For each `ByteMatchTuple` object, you specify the following values:

  <ul> <li> Whether to insert or delete the object from the array. If you
  want to change a `ByteMatchSetUpdate` object, you delete the existing
  object and add a new one.

  </li> <li> The part of a web request that you want AWS WAF to inspect, such
  as a query string or the value of the `User-Agent` header.

  </li> <li> The bytes (typically a string that corresponds with ASCII
  characters) that you want AWS WAF to look for. For more information,
  including how you specify the values for the AWS WAF API and the AWS CLI or
  SDKs, see `TargetString` in the `ByteMatchTuple` data type.

  </li> <li> Where to look, such as at the beginning or the end of a query
  string.

  </li> <li> Whether to perform any conversions on the request, such as
  converting it to lowercase, before inspecting it for the specified string.

  </li> </ul> For example, you can add a `ByteMatchSetUpdate` object that
  matches web requests in which `User-Agent` headers contain the string
  `BadBot`. You can then configure AWS WAF to block those requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

  <ol> <li> Create a `ByteMatchSet.` For more information, see
  `CreateByteMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateByteMatchSet` request.

  </li> <li> Submit an `UpdateByteMatchSet` request to specify the part of
  the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateByteMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of `XssMatchSet` objects.
  """
  def list_xss_match_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListXssMatchSets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a `WebACL`, which contains the `Rules` that identify the CloudFront
  web requests that you want to allow, block, or count. AWS WAF evaluates
  `Rules` in order based on the value of `Priority` for each `Rule`.

  You also specify a default action, either `ALLOW` or `BLOCK`. If a web
  request doesn't match any of the `Rules` in a `WebACL`, AWS WAF responds to
  the request with the default action.

  To create and configure a `WebACL`, perform the following steps:

  <ol> <li> Create and update the `ByteMatchSet` objects and other predicates
  that you want to include in `Rules`. For more information, see
  `CreateByteMatchSet`, `UpdateByteMatchSet`, `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.

  </li> <li> Create and update the `Rules` that you want to include in the
  `WebACL`. For more information, see `CreateRule` and `UpdateRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateWebACL` request.

  </li> <li> Submit a `CreateWebACL` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateWebACL` request.

  </li> <li> Submit an `UpdateWebACL` request to specify the `Rules` that you
  want to include in the `WebACL`, to specify the default action, and to
  associate the `WebACL` with a CloudFront distribution.

  </li> </ol> For more information about how to use the AWS WAF API, see the
  [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateWebACL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `SizeConstraint` objects (filters) in a
  `SizeConstraintSet`. For each `SizeConstraint` object, you specify the
  following values:

  <ul> <li> Whether to insert or delete the object from the array. If you
  want to change a `SizeConstraintSetUpdate` object, you delete the existing
  object and add a new one.

  </li> <li> The part of a web request that you want AWS WAF to evaluate,
  such as the length of a query string or the length of the `User-Agent`
  header.

  </li> <li> Whether to perform any transformations on the request, such as
  converting it to lowercase, before checking its length. Note that
  transformations of the request body are not supported because the AWS
  resource forwards only the first `8192` bytes of your request to AWS WAF.

  </li> <li> A `ComparisonOperator` used for evaluating the selected part of
  the request against the specified `Size`, such as equals, greater than,
  less than, and so on.

  </li> <li> The length, in bytes, that you want AWS WAF to watch for in
  selected part of the request. The length is computed after applying the
  transformation.

  </li> </ul> For example, you can add a `SizeConstraintSetUpdate` object
  that matches web requests in which the length of the `User-Agent` header is
  greater than 100 bytes. You can then configure AWS WAF to block those
  requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

  <ol> <li> Create a `SizeConstraintSet.` For more information, see
  `CreateSizeConstraintSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.

  </li> <li> Submit an `UpdateSizeConstraintSet` request to specify the part
  of the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateSizeConstraintSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Removes a web ACL from the specified resource.
  """
  def disassociate_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateWebACL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes a `ByteMatchSet`. You can't delete a `ByteMatchSet` if
  it's still used in any `Rules` or if it still includes any `ByteMatchTuple`
  objects (any filters).

  If you just want to remove a `ByteMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `ByteMatchSet`, perform the following steps:

  <ol> <li> Update the `ByteMatchSet` to remove filters, if any. For more
  information, see `UpdateByteMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteByteMatchSet` request.

  </li> <li> Submit a `DeleteByteMatchSet` request.

  </li> </ol>
  """
  def delete_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteByteMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of `ByteMatchSetSummary` objects.
  """
  def list_byte_match_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListByteMatchSets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Inserts or deletes `IPSetDescriptor` objects in an `IPSet`. For each
  `IPSetDescriptor` object, you specify the following values:

  <ul> <li> Whether to insert or delete the object from the array. If you
  want to change an `IPSetDescriptor` object, you delete the existing object
  and add a new one.

  </li> <li> The IP address version, `IPv4` or `IPv6`.

  </li> <li> The IP address in CIDR notation, for example, `192.0.2.0/24`
  (for the range of IP addresses from `192.0.2.0` to `192.0.2.255`) or
  `192.0.2.44/32` (for the individual IP address `192.0.2.44`).

  </li> </ul> AWS WAF supports /8, /16, /24, and /32 IP address ranges for
  IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6. For more information
  about CIDR notation, see the Wikipedia entry [Classless Inter-Domain
  Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

  IPv6 addresses can be represented using any of the following formats:

  <ul> <li> 1111:0000:0000:0000:0000:0000:0000:0111/128

  </li> <li> 1111:0:0:0:0:0:0:0111/128

  </li> <li> 1111::0111/128

  </li> <li> 1111::111/128

  </li> </ul> You use an `IPSet` to specify which web requests you want to
  allow or block based on the IP addresses that the requests originated from.
  For example, if you're receiving a lot of requests from one or a small
  number of IP addresses and you want to block the requests, you can create
  an `IPSet` that specifies those IP addresses, and then configure AWS WAF to
  block the requests.

  To create and configure an `IPSet`, perform the following steps:

  <ol> <li> Submit a `CreateIPSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateIPSet` request to specify the IP addresses that
  you want AWS WAF to watch for.

  </li> </ol> When you update an `IPSet`, you specify the IP addresses that
  you want to add and/or the IP addresses that you want to delete. If you
  want to change an IP address, you delete the existing IP address and add
  the new one.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateIPSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of resources associated with the specified web ACL.
  """
  def list_resources_for_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListResourcesForWebACL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `XssMatchSet` that is specified by `XssMatchSetId`.
  """
  def get_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetXssMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `IPSet` that is specified by `IPSetId`.
  """
  def get_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetIPSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes a `SqlInjectionMatchSet`. You can't delete a
  `SqlInjectionMatchSet` if it's still used in any `Rules` or if it still
  contains any `SqlInjectionMatchTuple` objects.

  If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform the
  following steps:

  <ol> <li> Update the `SqlInjectionMatchSet` to remove filters, if any. For
  more information, see `UpdateSqlInjectionMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteSqlInjectionMatchSet` request.

  </li> <li> Submit a `DeleteSqlInjectionMatchSet` request.

  </li> </ol>
  """
  def delete_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteSqlInjectionMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `ByteMatchSet` specified by `ByteMatchSetId`.
  """
  def get_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetByteMatchSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets detailed information about a specified number of requests--a
  sample--that AWS WAF randomly selects from among the first 5,000 requests
  that your AWS resource received during a time range that you choose. You
  can specify a sample size of up to 500 requests, and you can specify any
  time range in the previous three hours.

  `GetSampledRequests` returns a time range, which is usually the time range
  that you specified. However, if your resource (such as a CloudFront
  distribution) received 5,000 requests before the specified time range
  elapsed, `GetSampledRequests` returns an updated time range. This new time
  range indicates the actual period during which AWS WAF selected the
  requests in the sample.
  """
  def get_sampled_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetSampledRequests",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the `WebACL` that is specified by `WebACLId`.
  """
  def get_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetWebACL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  When you want to create, update, or delete AWS WAF objects, get a change
  token and include the change token in the create, update, or delete
  request. Change tokens ensure that your application doesn't submit
  conflicting requests to AWS WAF.

  Each create, update, or delete request must use a unique change token. If
  your application submits a `GetChangeToken` request and then submits a
  second `GetChangeToken` request before submitting a create, update, or
  delete request, the second `GetChangeToken` request returns the same value
  as the first `GetChangeToken` request.

  When you use a change token in a create, update, or delete request, the
  status of the change token changes to `PENDING`, which indicates that AWS
  WAF is propagating the change to all AWS WAF servers. Use
  `GetChangeTokenStatus` to determine the status of your change token.
  """
  def get_change_token(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetChangeToken",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates an `IPSet`, which you use to specify which web requests you want to
  allow or block based on the IP addresses that the requests originate from.
  For example, if you're receiving a lot of requests from one or more
  individual IP addresses or one or more ranges of IP addresses and you want
  to block the requests, you can create an `IPSet` that contains those IP
  addresses and then configure AWS WAF to block the requests.

  To create and configure an `IPSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateIPSet` request.

  </li> <li> Submit a `CreateIPSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateIPSet` request to specify the IP addresses that
  you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateIPSet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Permanently deletes a `RateBasedRule`. You can't delete a rule if it's
  still used in any `WebACL` objects or if it still includes any predicates,
  such as `ByteMatchSet` objects.

  If you just want to remove a rule from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `RateBasedRule` from AWS WAF, perform the following
  steps:

  <ol> <li> Update the `RateBasedRule` to remove predicates, if any. For more
  information, see `UpdateRateBasedRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteRateBasedRule` request.

  </li> <li> Submit a `DeleteRateBasedRule` request.

  </li> </ol>
  """
  def delete_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteRateBasedRule",
      type:     :json,
      method:   :post
    }
  end
  
end