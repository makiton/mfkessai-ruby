# OpenapiClient::TransactionDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | 小計です。単価(&#x60;unit_price&#x60;)×数量(&#x60;quantity&#x60;)の金額です。 | [optional] 
**description** | **String** | 商品名などです。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;transaction_detail&#x60;が入ります。 | [optional] 
**tax_rate_type** | [**TaxRateType**](TaxRateType.md) |  | [optional] 
**unit_price** | **Float** | 単価です。 | [optional] 
**quantity** | **Float** | 数量です。 | [optional] 
**tax_included_type** | [**TaxIncludedType**](TaxIncludedType.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::TransactionDetail.new(amount: 12000.0,
                                 description: 商品名A,
                                 object: transaction_detail,
                                 tax_rate_type: null,
                                 unit_price: 1000.0,
                                 quantity: 3.0,
                                 tax_included_type: null)
```


