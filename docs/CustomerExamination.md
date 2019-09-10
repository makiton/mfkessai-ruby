# OpenapiClient::CustomerExamination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address1** | **String** | 都道府県・市区町村・番地です。必ず都道府県名から始めてください。 | [optional] 
**address2** | **String** | 建物名・部屋番号などです。 | [optional] 
**amount** | **Integer** | 希望与信額です。審査通過の場合に付与される与信枠の金額になります。 | [optional] 
**business_description** | **String** | 事業内容です。顧客の主なサービス、商材などです。 | [optional] 
**business_type** | **String** | 事業所区分です。法人(&#x60;corporate&#x60;)または、個人(&#x60;individual&#x60;)で指定されます。不明な場合は空になります。 | [optional] 
**corporate_number** | **String** | 法人番号です。事業所区分(&#x60;business_type&#x60;)が法人(&#x60;corporate&#x60;)の場合にのみ指定されます。 | [optional] 
**created_at** | **DateTime** | 顧客審査の申請日時です。 | [optional] 
**customer_id** | **String** | 顧客IDです。一意の識別子として自動で付与されます。 | [optional] 
**email** | **String** | メールアドレスです。email形式で指定してください。 | [optional] 
**end_date** | **Date** | 希望取引登録期間終了日です。この日付まで対象の与信枠を利用して取引登録ができます。 | [optional] 
**id** | **String** | 顧客審査IDです。一意の識別子として自動で付与されます。 | [optional] 
**remark** | **String** | その他情報です。審査に利用できる情報を記載できます。 | [optional] 
**representative_name** | **String** | 代表者名です。 | [optional] 
**start_date** | **Date** | 希望取引登録期間開始日。この日付から対象の与信枠を利用して取引登録ができます。 手動での申請の場合、審査通過日となるため空で返却されます。自動顧客審査による申請の場合は、月次での与信枠付与になり対象月の月初日となります。 | [optional] 
**status** | **String** | 顧客審査ステータスです。審査中(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)があります。審査通過の場合には与信枠が付与されています。 | [optional] 
**tel** | **String** | 電話番号です。ハイフン有無は任意になります。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;customer_examination&#x60;が入ります。 | [optional] 
**uri** | **String** | 顧客審査URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] 
**website** | **String** | 顧客企業のwebサイトです。 | [optional] 
**zip_code** | **String** | 郵便番号です。ハイフン有無は任意になります。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CustomerExamination.new(address1: 東京都千代田区1-2-3,
                                 address2: サンプルビル3F,
                                 amount: 200000,
                                 business_description: クラウド型企業間決済サービス,
                                 business_type: corporate,
                                 corporate_number: 1234567890123,
                                 created_at: 2019-02-18T10:21:34+09:00,
                                 customer_id: 7679-YW36,
                                 email: kessai.tanto@example.jp,
                                 end_date: Tue Apr 30 09:00:00 JST 2019,
                                 id: 7679-YW36,
                                 remark: 一部上場企業です。,
                                 representative_name: 代表太郎,
                                 start_date: Mon Apr 01 09:00:00 JST 2019,
                                 status: passed,
                                 tel: 03-1234-5678,
                                 object: customer_examination,
                                 uri: mfk:customer_examination:7679-YW36,
                                 website: https://mfkessai.co.jp,
                                 zip_code: 111-1111)
```


