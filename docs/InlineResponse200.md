# OpenapiClient::InlineResponse200

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**Array&lt;Customer&gt;**](Customer.md) | 条件に該当する顧客の一覧です。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず &#x60;list&#x60;が設定されます。 | [optional] 
**pagination** | [**Pagination**](Pagination.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse200.new(items: null,
                                 object: null,
                                 pagination: null)
```


