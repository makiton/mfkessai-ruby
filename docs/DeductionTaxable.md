# OpenapiClient::DeductionTaxable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 課税対象の控除金額です。 | [optional] 
**basic_monthly_charge** | **Integer** | 月額基本料金です。 | [optional] 
**posting** | [**DeductionTaxablePosting**](DeductionTaxablePosting.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DeductionTaxable.new(amount: 25000,
                                 basic_monthly_charge: 10000,
                                 posting: null)
```


