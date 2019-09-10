# OpenapiClient::DeductionTaxablePosting

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 郵送料です。 | [optional] 
**quantity** | **Integer** | 郵送件数です。 | [optional] 
**unit_price** | **Integer** | 郵送１件あたりの郵送料です。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DeductionTaxablePosting.new(amount: 15000,
                                 quantity: 100,
                                 unit_price: 150)
```


