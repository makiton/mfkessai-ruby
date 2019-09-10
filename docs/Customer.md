# OpenapiClient::Customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | 顧客が登録された日時を示します。 | [optional] 
**has_alert** | **Boolean** | 未入金アラートの有無を示します。未入金アラートがある場合は&#x60;true&#x60;、ない場合は&#x60;false&#x60;を返します。未入金アラートがあると、自動で毎月付与されている与信枠が停止します。 | [optional] 
**id** | **String** | 顧客IDです。 MF KESSAIによって発番される一意の識別子です。 | [optional] 
**name** | **String** | 顧客名です。 | [optional] 
**number** | **String** | 顧客に付与できる任意の顧客番号です。自動で付与される顧客IDとは別に、売り手様が独自に管理する識別子を登録することができます。ただし、売り手様の管理される顧客間で一意でなければなりません。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;customer&#x60;が入ります。 | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**uri** | **String** | 顧客URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Customer.new(created_at: 2019-04-01T10:36:43+09:00,
                                 has_alert: null,
                                 id: 7679-YW36,
                                 name: サンプル顧客,
                                 number: CUSTOMER0001,
                                 object: customer,
                                 payment_method: null,
                                 uri: mfk:customer:7679-YW36)
```


