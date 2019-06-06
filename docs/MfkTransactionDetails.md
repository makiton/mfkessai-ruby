# SwaggerClient::MfkTransactionDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | 取引金額 | [optional] 
**destination** | [**MfkDestination**](MfkDestination.md) |  | [optional] 
**destination_id** | **String** | 請求先ID(登録済みの場合) | [optional] 
**id** | **String** | 取引ID | [optional] 
**status** | **String** | 取引ステータス(unexamined: 審査中, examination_passed: 審査通過, examination_rejected: 審査否決, invoice_issued: 請求書発行済, canceled: キャンセル) | [optional] 
**transaction_details** | [**Array&lt;TransactionDetail&gt;**](TransactionDetail.md) | 取引明細リスト | [optional] 
**user_defined_id** | **String** | 任意の識別子。請求書に取引番号として印字されます。 | [optional] 


