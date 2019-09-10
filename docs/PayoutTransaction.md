# OpenapiClient::PayoutTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accepted_at** | **DateTime** | 債権譲受日時です。 | [optional] 
**amount** | **Integer** | 債権金額です。 | [optional] 
**commission_amount** | **Integer** | 手数料の金額です。 | [optional] 
**commission_rate** | **Float** | 手数料率です。 | [optional] 
**early_payout_commission_amount** | **Integer** | 早期振込手数料です。 | [optional] 
**early_payout_commission_rate** | **Float** | 早期振込手数料率です。 | [optional] 
**id** | **String** | 債権IDです。一意の識別子として自動で付与されます。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;payout_transaction&#x60;が入ります。 | [optional] 
**payout_date** | **Date** | 振込予定日です。早期振込の場合、&#x60;standard_payout_date&#x60;よりも早くなります。 | [optional] 
**payout_id** | **String** | 債権が含まれる振込のIDです。 | [optional] 
**standard_payout_date** | **Date** | 通常の振込予定日です。 | [optional] 
**transaction_id** | **String** | 取引IDです。この債権が紐づく取引を示します。 | [optional] 
**uri** | **String** | 債権URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PayoutTransaction.new(accepted_at: 2019-04-01T10:36:43+09:00,
                                 amount: 10000,
                                 commission_amount: 10000,
                                 commission_rate: 2.0,
                                 early_payout_commission_amount: 10000,
                                 early_payout_commission_rate: 4.0,
                                 id: 9NR3-P9A6,
                                 object: payout_transaction,
                                 payout_date: Mon Apr 15 09:00:00 JST 2019,
                                 payout_id: 7679-YW36,
                                 standard_payout_date: Wed May 01 09:00:00 JST 2019,
                                 transaction_id: GY9N-EWNM,
                                 uri: mfk:payout_transaction:9NR3-P9A6)
```


