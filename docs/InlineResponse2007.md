# OpenapiClient::InlineResponse2007

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**Array&lt;PayoutTransaction&gt;**](PayoutTransaction.md) | 債権一覧です。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず &#x60;list&#x60;が設定されます。 | [optional] 
**pagination** | [**Pagination**](Pagination.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse2007.new(items: null,
                                 object: list,
                                 pagination: null)
```


