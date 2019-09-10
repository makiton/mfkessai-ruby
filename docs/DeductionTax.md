# OpenapiClient::DeductionTax

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 消費税額です。 | [optional] 
**rate_type** | [**TaxRateType**](TaxRateType.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DeductionTax.new(amount: 10000,
                                 rate_type: null)
```


