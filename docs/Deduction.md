# OpenapiClient::Deduction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 債権合計額から控除される合計金額です。 | [optional] 
**returned_credit_amount** | **Integer** | 売り手様へのの振込後に発生したキャンセルに伴う返金額です。 | [optional] 
**tax** | [**DeductionTax**](DeductionTax.md) |  | [optional] 
**taxable** | [**DeductionTaxable**](DeductionTaxable.md) |  | [optional] 
**tax_free** | [**DeductionTaxFree**](DeductionTaxFree.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Deduction.new(amount: 10000,
                                 returned_credit_amount: 10000,
                                 tax: null,
                                 taxable: null,
                                 tax_free: null)
```


