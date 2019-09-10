# OpenapiClient::CreditFacility

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 与信額です。取引登録期間(&#x60;start_date&#x60;~&#x60;end_date&#x60;)にこの金額までの取引であれば取引審査なしで登録することができます。 | [optional] 
**balance** | **Integer** | 与信額残高です。与信額からこの与信枠を利用して登録された取引の合計金額を差し引いた金額です。現在与信枠を利用して登録できる取引金額を示しています。 | [optional] 
**customer_id** | **String** | 顧客IDです。一意の識別子として自動で付与されます。 | [optional] 
**customer_examination_id** | **String** | 顧客審査IDです。 | [optional] 
**end_date** | **Date** | 取引登録期間終了日です。この日付まで対象の与信枠を利用して取引登録ができます。 | [optional] 
**id** | **String** | 与信枠IDです。一意の識別子として自動で付与されます。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;credit_facility&#x60;が入ります。 | [optional] 
**start_date** | **Date** | 取引登録期間開始日です。この日付から対象の与信枠を利用して取引登録ができます。 | [optional] 
**status** | **String** | 与信枠ステータスです。未適用(&#x60;inactive&#x60;)、適用中(&#x60;active&#x60;)、期限切れ(&#x60;expired&#x60;)があります。 現在の日付が&#x60;start_date&#x60;~&#x60;end_date&#x60;の期間内であれば&#x60;active&#x60;、&#x60;start_date&#x60;よりも前であれば&#x60;inactive&#x60;、&#x60;end_date&#x60;を過ぎていれば&#x60;expired&#x60;になります。 | [optional] 
**uri** | **String** | 与信枠URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CreditFacility.new(amount: 200000,
                                 balance: 100000,
                                 customer_id: 9R6M-VMAN,
                                 customer_examination_id: 7679-YW36,
                                 end_date: Tue Apr 30 09:00:00 JST 2019,
                                 id: 7679-YW36,
                                 object: credit_facility,
                                 start_date: Mon Apr 01 09:00:00 JST 2019,
                                 status: inactive,
                                 uri: mfk:credit_facility:7679-YW36)
```


