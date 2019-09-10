# OpenapiClient::TransactionPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 取引の税込合計金額です。取引明細(transaction_details)の小計の合計額である必要があります。また、負の値を指定することはできません。 | 
**amounts_per_tax_rate_type** | [**Array&lt;AmountPerTaxRateType&gt;**](AmountPerTaxRateType.md) | 各課税種別毎の税込の合計金額です。各課税種別の取引明細行の小計を合計した値になっていなければなりません。 | 
**date** | **Date** | 取引日です。売り手様と顧客の間で取引を行った日付を指定してください。 | 
**destination_id** | **String** | 請求先IDです。取引の請求先を指定してください。 | 
**due_date** | **Date** | 支払期限日です。 | 
**invoice_delivery_methods** | [**Array&lt;InvoiceDeliveryMethod&gt;**](InvoiceDeliveryMethod.md) | 請求書送付方法です。郵送(posting) またはメール送付(email)のうちから少なくとも１つを指定してください。どちらも選択された場合、どちらの方法でも送付されます。 また、各取引で指定しなかった送付方法でも、請求にまとまった取引のうちでその送付方法を選択しているものがあれば、そちらの送付方法も採用されます。 | 
**issue_date** | **Date** | 請求書発行日です。請求書が発行される日付を指定します。指定した日付が営業日でない場合は翌営業日になります。また、請求書送付日については[こちら](https://support.mfkessai.co.jp/hc/ja/articles/360012259673-%E8%AB%8B%E6%B1%82%E6%9B%B8%E7%99%BA%E8%A1%8C%E6%97%A5)を参照ください。 | 
**number** | **String** | 取引に付与できる任意の取引番号です。MF KESSAIが自動で付与する取引IDとは別で、売り手様が独自に管理する識別子を登録することができます。ただし、売り手様の所有する取引間で一意である必要があります。 | 
**transaction_details** | [**Array&lt;TransactionDetailPayload&gt;**](TransactionDetailPayload.md) | 取引明細行です。 | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::TransactionPayload.new(amount: 5000,
                                 amounts_per_tax_rate_type: [{amount&#x3D;1100, tax_rate_type&#x3D;10}, {amount&#x3D;1080, tax_rate_type&#x3D;reduced_8}],
                                 date: Mon Apr 01 09:00:00 JST 2019,
                                 destination_id: WNAV-37R6,
                                 due_date: Tue Apr 30 09:00:00 JST 2019,
                                 invoice_delivery_methods: [posting, email],
                                 issue_date: Sat Apr 20 09:00:00 JST 2019,
                                 number: Transaction-0001,
                                 transaction_details: [{amount&#x3D;3000, description&#x3D;商品名A, tax_included_type&#x3D;excluded, tax_rate_type&#x3D;8, quantity&#x3D;3, unit_price&#x3D;1000}, {amount&#x3D;3000, description&#x3D;商品名B, tax_included_type&#x3D;excluded, tax_rate_type&#x3D;reduced_8, quantity&#x3D;3, unit_price&#x3D;1000}, {amount&#x3D;-1000, description&#x3D;商品名A 返品, tax_included_type&#x3D;excluded, tax_rate_type&#x3D;8, quantity&#x3D;1, unit_price&#x3D;-1000}])
```


