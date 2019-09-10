# OpenapiClient::Transaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 取引の合計金額です。**税込**金額になります。 | [optional] 
**amounts_per_tax_rate_type** | [**Array&lt;AmountPerTaxRateType&gt;**](AmountPerTaxRateType.md) | 各税率種別毎の**税込**の合計金額です。各税率種別の取引明細行の小計を合計した値に各税率を乗じた値になっています。 | [optional] 
**billing_id** | **String** | 請求IDです。請求書にまとめられる単位のIDです。同じ請求IDを持つ取引とまとめられて請求書に記載されます。 | [optional] 
**created_at** | **DateTime** | 取引が登録された日時です。 | [optional] 
**destination_id** | **String** | 請求先IDです。取引の請求先を示します。 | [optional] 
**date** | **Date** | 取引日です。売り手様と顧客様の間で取引を行った日付です。 | [optional] 
**due_date** | **Date** | 支払期限日です。この日付を超えてMF KESSAIへの入金が確認できない場合は未入金になります。 | [optional] 
**id** | **String** | 取引IDです。一意の識別子として自動で付与されます。 | [optional] 
**invoice_delivery_methods** | [**Array&lt;InvoiceDeliveryMethod&gt;**](InvoiceDeliveryMethod.md) | 請求書送付方法です。郵送(posting) またはメール送付(email)のうちから少なくとも１つを指定してください。どちらも選択された場合、どちらの方法でも送付されます。 また、各取引で指定しなかった送付方法でも、請求にまとまった取引のうちでその送付方法を選択しているものがあれば、そちらの送付方法も採用されます。 | [optional] 
**issue_date** | **Date** | 請求書発行日です。請求書が発行される日付を指定します。指定した日付が営業日でない場合は翌営業日になります。 また、請求書発送日については&lt;a href&#x3D;\&quot;https://support.mfkessai.co.jp/hc/ja/articles/360012259673-%E8%AB%8B%E6%B1%82%E6%9B%B8%E7%99%BA%E8%A1%8C%E6%97%A5\&quot; target&#x3D;\&quot;_blank\&quot;&gt;請求書発行日について&lt;/a&gt;を参照ください。 | [optional] 
**number** | **String** | 取引に付与できる任意の取引番号です。MF KESSAIが自動で付与する取引IDとは別で、売り手様が独自に管理する識別子を登録することができます。ただし、売り手様の所有する取引間で一意である必要があります。 | [optional] 
**object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;transaction&#x60;が入ります。 | [optional] 
**status** | **String** | 取引ステータスです。審査中(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)、キャンセル済(&#x60;canceled&#x60;)があります。 | [optional] 
**transaction_details** | [**Array&lt;TransactionDetail&gt;**](TransactionDetail.md) | 取引明細行です。 | [optional] 
**uri** | **String** | 取引URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Transaction.new(amount: 2180,
                                 amounts_per_tax_rate_type: null,
                                 billing_id: 9R6M-VMAN,
                                 created_at: 2019-04-01T10:36:43+09:00,
                                 destination_id: WNAV-37R6,
                                 date: Mon Apr 01 09:00:00 JST 2019,
                                 due_date: Tue Apr 30 09:00:00 JST 2019,
                                 id: 7679-YW36,
                                 invoice_delivery_methods: [posting, email],
                                 issue_date: Sat Apr 20 09:00:00 JST 2019,
                                 number: Transaction-0001,
                                 object: transaction,
                                 status: passed,
                                 transaction_details: null,
                                 uri: mfk:transaction:7679-YW36)
```


