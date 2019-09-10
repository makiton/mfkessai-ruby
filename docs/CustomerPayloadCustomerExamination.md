# OpenapiClient::CustomerPayloadCustomerExamination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 希望与信額です。審査通過の場合に付与される与信枠の金額になります。現在与信枠が適用中の場合は、その与信額以下の金額は指定できません。0円を指定した場合は無視されます。 | [optional] 
**business_description** | **String** | 事業内容です。顧客の主なサービス、商材などを記載してください。 | [optional] 
**business_type** | **String** | 事業所区分です。法人(&#x60;corporate&#x60;)または、個人(&#x60;individual&#x60;)で指定してください。不明な場合は空にしてください。 | [optional] 
**corporate_number** | **String** | 法人番号です。事業所区分(&#x60;business_type&#x60;)が法人(&#x60;corporate&#x60;)の場合にのみ指定してください。 | [optional] 
**remark** | **String** | 顧客審査に利用できるその他情報を記載できます。 | [optional] 
**representative_name** | **String** | 代表者氏名です。 | [optional] 
**website** | **String** | 顧客企業のwebサイトです。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CustomerPayloadCustomerExamination.new(amount: 200000,
                                 business_description: クラウド型企業間決済サービス,
                                 business_type: corporate,
                                 corporate_number: 1234567890123,
                                 remark: 一部上場企業です。,
                                 representative_name: 代表太郎,
                                 website: https://mfkessai.co.jp)
```


