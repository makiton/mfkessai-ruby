# OpenapiClient::TransactionDetailPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | 小計です。単価(&#x60;unit_price&#x60;)×数量(&#x60;quantity&#x60;)の金額を指定してください。 | 
**description** | **String** | 商品名などです。 | 
**tax_included_type** | [**TaxIncludedType**](TaxIncludedType.md) |  | 
**tax_rate_type** | [**TaxRateType**](TaxRateType.md) |  | 
**quantity** | **Float** | 数量を指定してください。 | 
**unit_price** | **Float** | 単価を指定してください。 | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::TransactionDetailPayload.new(amount: 12000.0,
                                 description: 商品名A,
                                 tax_included_type: null,
                                 tax_rate_type: null,
                                 quantity: 3.0,
                                 unit_price: 1000.0)
```


