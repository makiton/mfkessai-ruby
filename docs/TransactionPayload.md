# SwaggerClient::TransactionPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 取引金額 | 
**date** | **DateTime** | 取引日 | 
**destination** | [**DestinationPayload**](DestinationPayload.md) |  | [optional] 
**destination_id** | **String** | 請求先ID(登録済みの場合) | [optional] 
**due_date** | **DateTime** | 支払期日 | 
**email_flag** | **BOOLEAN** | メールフラグ | [optional] 
**issue_date** | **DateTime** | 請求書発行日 | 
**posting_flag** | **BOOLEAN** | 郵送フラグ | [optional] 
**transaction_details** | [**Array&lt;TransactionDetail&gt;**](TransactionDetail.md) | 取引明細リスト | 
**user_defined_id** | **String** | 任意の識別子。請求書に取引番号として印字されます。 | 


