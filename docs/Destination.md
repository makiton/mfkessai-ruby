# OpenapiClient::Destination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address1** | **String** | 都道府県・市区町村・番地です。必ず都道府県名から始めてください。 | [optional] 
**address2** | **String** | 建物名・部屋番号などです。 | [optional] 
**cc_emails** | **Array&lt;String&gt;** | CCメールアドレスです。最大4件まで登録できます。 | [optional] 
**created_at** | **DateTime** | 請求先が登録された日時を示します。 | [optional] 
**customer_id** | **String** | 顧客IDです。一意の識別子として自動で付与されます。 | [optional] 
**department** | **String** | 担当者の部署名です。 | [optional] 
**email** | **String** | メールアドレスです。email形式で指定してください。 | [optional] 
**id** | **String** | 請求先IDです。一意の識別子として自動で付与されます。 | [optional] 
**name** | **String** | 担当者名です。 | [optional] 
**name_kana** | **String** | 担当者名カナです。全角カタカナで入力してください。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;destination&#x60;が入ります。 | [optional] 
**tel** | **String** | 電話番号です。ハイフン有無は任意になります。 | [optional] 
**title** | **String** | 担当者の役職です。 | [optional] 
**uri** | **String** | 請求先URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] 
**zip_code** | **String** | 郵便番号です。ハイフン有無は任意になります。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Destination.new(address1: 東京都千代田区1-2-3,
                                 address2: サンプルビル3F,
                                 cc_emails: [another.tanto1@example.jp, another.tanto2@example.jp],
                                 created_at: 2019-04-01T10:36:43+09:00,
                                 customer_id: 7679-YW36,
                                 department: 経理部,
                                 email: kessai.tanto@example.jp,
                                 id: 7679-YW36,
                                 name: 担当 太郎,
                                 name_kana: タントウ タロウ,
                                 object: destination,
                                 tel: 03-1234-5678,
                                 title: 部長,
                                 uri: mfk:destination:7679-YW36,
                                 zip_code: 111-1111)
```


