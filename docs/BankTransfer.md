# OpenapiClient::BankTransfer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | 振込先口座番号です。未割当の場合は空で返却されます。 | [optional] 
**bank_name** | **String** | 振込先銀行名です。未割当の場合は空で返却されます。 | [optional] 
**branch_name** | **String** | 振込先銀行支店名です。未割当の場合は空で返却されます。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;bank_transfer&#x60;が入ります。 | [optional] 
**type** | **String** | 振込先口座種別です。&#x60;current&#x60;(当座)、&#x60;saving&#x60;(普通)の2種類のうちどちらかが指定されます。未割当の場合は空で返却されます。 | [optional] 
**holder_name** | **String** | 振込先口座名義です。必ず&#x60;ｴﾑｴﾌｹﾂｻｲ(ｶ&#x60;になります。未割当の場合は空で返却されます。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BankTransfer.new(account_number: 12345678,
                                 bank_name: MFKESSSAI銀行,
                                 branch_name: 大手町支店,
                                 object: bank_transfer,
                                 type: null,
                                 holder_name: ｴﾑｴﾌｹﾂｻｲ(ｶ)
```


