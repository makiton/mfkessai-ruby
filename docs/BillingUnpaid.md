# OpenapiClient::BillingUnpaid

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shortage_amount** | **Integer** | 未入金額です。 | [optional] 
**updated_date** | **Date** | 入金情報が最後に更新された日付です。この日付移行に入金されている可能性があります。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BillingUnpaid.new(shortage_amount: 12000,
                                 updated_date: Tue Apr 30 09:00:00 JST 2019)
```


