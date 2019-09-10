# OpenapiClient::CustomerExaminationPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address1** | **String** | 都道府県・市区町村・番地です。必ず都道府県名から始めてください。 | 
**address2** | **String** | 建物名・部屋番号などです。 | [optional] 
**amount** | **Integer** | 希望与信額です。審査通過の場合に付与される与信枠の金額になります。現在与信枠が適用中の場合は、その与信額以下の金額は指定できません。 | 
**business_description** | **String** | 事業内容です。顧客の主なサービス、商材などを記載してください。 | [optional] 
**business_type** | **String** | 事業所区分です。法人(&#x60;corporate&#x60;)または、個人(&#x60;individual&#x60;)で指定してください。不明な場合は空にしてください。 | [optional] 
**corporate_number** | **String** | 法人番号です。事業所区分(&#x60;business_type&#x60;)が法人(&#x60;corporate&#x60;)の場合にのみ指定してください。 | [optional] 
**customer_id** | **String** | 顧客審査を申請する顧客のIDです。 | 
**email** | **String** | メールアドレスです。email形式で指定してください。 | 
**end_date** | **Date** | 希望取引登録期間終了日です。この日付まで対象の与信枠を利用して取引登録ができます。 直近三ヶ月の月末のみ指定できます。ただし当月残りの営業日数が審査に要する2日を下回っている場合は、当月末は指定できません。 | 
**remark** | **String** | 顧客審査に利用できるその他情報を記載できます。 | [optional] 
**representative_name** | **String** | 代表者氏名です。 | [optional] 
**tel** | **String** | 電話番号です。ハイフン有無は任意になります。 | 
**website** | **String** | 顧客企業のwebサイトです。 | [optional] 
**zip_code** | **String** | 郵便番号です。ハイフン有無は任意になります。 | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CustomerExaminationPayload.new(address1: 東京都千代田区1-2-3,
                                 address2: サンプルビル3F,
                                 amount: 200000,
                                 business_description: クラウド型企業間決済サービス,
                                 business_type: corporate,
                                 corporate_number: 1234567890123,
                                 customer_id: 7679-YW36,
                                 email: kessai.tanto@example.jp,
                                 end_date: Tue Apr 30 09:00:00 JST 2019,
                                 remark: 一部上場企業です。,
                                 representative_name: 代表太郎,
                                 tel: 03-1234-5678,
                                 website: https://mfkessai.co.jp,
                                 zip_code: 111-1111)
```


