# OpenapiClient::Pagination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_end** | **String** | この一覧に含まれるリソースのうち最後のリソースのIDです。次ページがある場合は、この値をクエリパラメーター&#x60;after&#x60;に設定することで次ページを取得することができます。 | [optional] 
**has_next** | **Boolean** | 次ページがある場合は&#x60;true&#x60;、ない場合は&#x60;false&#x60;が返却されます。 | [optional] 
**has_previous** | **Boolean** | 前ページがある場合は&#x60;true&#x60;、ない場合は&#x60;false&#x60;が返却されます。 | [optional] 
**limit** | **Integer** | ページ当たりの最大件数です。 | [optional] 
**start** | **String** | この一覧に含まれるリソースのうち最初のリソースのIDです。前ページがある場合は、この値をクエリパラメーター&#x60;before&#x60;に設定することで前ページを取得することができます。 | [optional] 
**total** | **Integer** | 条件に合致するリソースの全件数です。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Pagination.new(_end: 7679-YW36,
                                 has_next: true,
                                 has_previous: false,
                                 limit: 20,
                                 start: 9R6M-VMAN,
                                 total: 143)
```


