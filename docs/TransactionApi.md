# OpenapiClient::TransactionApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_transaction**](TransactionApi.md#cancel_transaction) | **DELETE** /transactions/{transaction_id} | 
[**create_transaction**](TransactionApi.md#create_transaction) | **POST** /transactions | 
[**get_transaction**](TransactionApi.md#get_transaction) | **GET** /transactions/{transaction_id} | 
[**get_transactions_list**](TransactionApi.md#get_transactions_list) | **GET** /transactions | 



## cancel_transaction

> Transaction cancel_transaction(transaction_id)



取引キャンセル

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

api_instance = OpenapiClient::TransactionApi.new
transaction_id = 'transaction_id_example' # String | 対象の取引IDを指定してください。

begin
  result = api_instance.cancel_transaction(transaction_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TransactionApi->cancel_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**| 対象の取引IDを指定してください。 | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_transaction

> Transaction create_transaction(payload)



取引登録

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

api_instance = OpenapiClient::TransactionApi.new
payload = OpenapiClient::TransactionPayload.new # TransactionPayload | 

begin
  result = api_instance.create_transaction(payload)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TransactionApi->create_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**TransactionPayload**](TransactionPayload.md)|  | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_transaction

> Transaction get_transaction(transaction_id)



取引取得

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

api_instance = OpenapiClient::TransactionApi.new
transaction_id = 'transaction_id_example' # String | 対象の取引IDを指定してください。

begin
  result = api_instance.get_transaction(transaction_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TransactionApi->get_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**| 対象の取引IDを指定してください。 | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions_list

> InlineResponse2004 get_transactions_list(opts)



取引一覧取得

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

api_instance = OpenapiClient::TransactionApi.new
opts = {
  created_at_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 指定された日時以降に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3399の`date-time`(2019-04-01T10:36:43+09:00)で指定してください。
  created_at_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 指定された日時以前に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3399の`date-time`(2019-04-01T10:36:43+09:00)で指定してください。
  date_from: Date.parse('2013-10-20'), # Date | 取引日が指定された日付以降の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3399の`full-time`(2019-04-01)で指定してください。
  date_to: Date.parse('2013-10-20'), # Date | 取引日が指定された日付以前の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3399の`full-time`(2019-04-01`)で指定してください。
  status: 'status_example', # String | 取引のステータスを指定します。未審査(`unexamined`)、審査通過(`passed`)、審査否決(`rejected`)、キャンセル済み(`canceled`)のいずれかを指定してください。
  number: 'number_example', # String | 任意の取引の `number`を指定します。該当する取引がある場合、その一件のみが返却されます。
  customer_id: 'customer_id_example', # String | 任意の顧客IDを指定します。指定した顧客に対する取引が返却されます。
  billing_id: 'billing_id_example', # String | 任意の請求IDを指定します。指定した請求に含まれる取引が返却されます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  result = api_instance.get_transactions_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TransactionApi->get_transactions_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_at_from** | **DateTime**| 指定された日時以降に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3399の&#x60;date-time&#x60;(2019-04-01T10:36:43+09:00)で指定してください。 | [optional] 
 **created_at_to** | **DateTime**| 指定された日時以前に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3399の&#x60;date-time&#x60;(2019-04-01T10:36:43+09:00)で指定してください。 | [optional] 
 **date_from** | **Date**| 取引日が指定された日付以降の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3399の&#x60;full-time&#x60;(2019-04-01)で指定してください。 | [optional] 
 **date_to** | **Date**| 取引日が指定された日付以前の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3399の&#x60;full-time&#x60;(2019-04-01&#x60;)で指定してください。 | [optional] 
 **status** | **String**| 取引のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)、キャンセル済み(&#x60;canceled&#x60;)のいずれかを指定してください。 | [optional] 
 **number** | **String**| 任意の取引の &#x60;number&#x60;を指定します。該当する取引がある場合、その一件のみが返却されます。 | [optional] 
 **customer_id** | **String**| 任意の顧客IDを指定します。指定した顧客に対する取引が返却されます。 | [optional] 
 **billing_id** | **String**| 任意の請求IDを指定します。指定した請求に含まれる取引が返却されます。 | [optional] 
 **after** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **before** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **limit** | **Integer**| 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

