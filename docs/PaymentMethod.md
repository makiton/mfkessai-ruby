# OpenapiClient::PaymentMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_transfer** | [**AccountTransfer**](AccountTransfer.md) |  | [optional] 
**bank_transfer** | [**BankTransfer**](BankTransfer.md) |  | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;payment_method&#x60;が入ります。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentMethod.new(account_transfer: null,
                                 bank_transfer: null,
                                 object: payment_method)
```


