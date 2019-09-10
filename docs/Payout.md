# OpenapiClient::Payout

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 振込金額です。 | [optional] 
**receivables_amount** | **Integer** | 振込の対象となる債権金額です。 | [optional] 
**deduction** | [**Deduction**](Deduction.md) |  | [optional] 
**id** | **String** | 振込IDです。一意の識別子として自動で付与されます。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;payout&#x60;が入ります。 | [optional] 
**payout_date** | **Date** | 振込予定日です。 | [optional] 
**status** | **String** | 振込ステータスです。振込手続中(&#x60;in_progress&#x60;)、振込完了(&#x60;completed&#x60;)があります。 | [optional] 
**type** | **String** | 振込種別です。通常振込(&#x60;normal&#x60;)、早期振込(&#x60;early&#x60;)があります。 | [optional] 
**uri** | **String** | 振込URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Payout.new(amount: 1000000,
                                 receivables_amount: 1100000,
                                 deduction: null,
                                 id: 7679-YW36,
                                 object: payout,
                                 payout_date: Mon Apr 01 09:00:00 JST 2019,
                                 status: completed,
                                 type: normal,
                                 uri: mfk:payout:7679-YW36)
```


