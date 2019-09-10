# OpenapiClient::InlineResponse2004

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**Array&lt;Transaction&gt;**](Transaction.md) | 取引一覧です。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず &#x60;list&#x60;が設定されます。 | [optional] 
**pagination** | [**Pagination**](Pagination.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse2004.new(items: null,
                                 object: list,
                                 pagination: null)
```


