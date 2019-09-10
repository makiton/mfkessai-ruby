# OpenapiClient::PayoutTransactionApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payout_transaction**](PayoutTransactionApi.md#get_payout_transaction) | **GET** /payout_transactions/{payout_transaction_id} | 
[**get_payout_transactions_list**](PayoutTransactionApi.md#get_payout_transactions_list) | **GET** /payout_transactions | 



## get_payout_transaction

> PayoutTransaction get_payout_transaction(payout_transaction_id)



債権取得

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = OpenapiClient::PayoutTransactionApi.new
payout_transaction_id = 'payout_transaction_id_example' # String | 取得したい債権のID。

begin
  result = api_instance.get_payout_transaction(payout_transaction_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PayoutTransactionApi->get_payout_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_transaction_id** | **String**| 取得したい債権のID。 | 

### Return type

[**PayoutTransaction**](PayoutTransaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_transactions_list

> InlineResponse2007 get_payout_transactions_list(opts)



債権一覧取得

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = OpenapiClient::PayoutTransactionApi.new
opts = {
  payout_id: 'payout_id_example', # String | 任意の振込IDを指定します。指定した振込に含まれる債権が返却されます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  result = api_instance.get_payout_transactions_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PayoutTransactionApi->get_payout_transactions_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_id** | **String**| 任意の振込IDを指定します。指定した振込に含まれる債権が返却されます。 | [optional] 
 **after** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **before** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **limit** | **Integer**| 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

