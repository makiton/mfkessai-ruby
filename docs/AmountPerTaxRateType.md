# OpenapiClient::AmountPerTaxRateType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 対象税率種別毎の合計金額です。**税込**金額になります。 | 
**tax_rate_type** | [**TaxRateType**](TaxRateType.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AmountPerTaxRateType.new(amount: 12000,
                                 tax_rate_type: null)
```


