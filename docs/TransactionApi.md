# SwaggerClient::TransactionApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transaction_cancel**](TransactionApi.md#transaction_cancel) | **POST** /transactions/{id}/cancel | cancel transaction
[**transaction_create**](TransactionApi.md#transaction_create) | **POST** /transactions | create transaction
[**transaction_index**](TransactionApi.md#transaction_index) | **GET** /transactions | index transaction
[**transaction_show**](TransactionApi.md#transaction_show) | **GET** /transactions/{id} | show transaction


# **transaction_cancel**
> MfkTransaction transaction_cancel(id)

cancel transaction

取引をキャンセル

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = SwaggerClient::TransactionApi.new

id = "id_example" # String | 


begin
  #cancel transaction
  result = api_instance.transaction_cancel(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionApi->transaction_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MfkTransaction**](MfkTransaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.transaction



# **transaction_create**
> MfkTransactionDetails transaction_create(payload)

create transaction

取引を登録

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = SwaggerClient::TransactionApi.new

payload = SwaggerClient::TransactionPayload.new # TransactionPayload | 


begin
  #create transaction
  result = api_instance.transaction_create(payload)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionApi->transaction_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**TransactionPayload**](TransactionPayload.md)|  | 

### Return type

[**MfkTransactionDetails**](MfkTransactionDetails.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.mfk.transaction, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error



# **transaction_index**
> MfkTransactions transaction_index(opts)

index transaction

取引リストを取得

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = SwaggerClient::TransactionApi.new

opts = { 
  page: 1, # Integer | ページ番号
  per_page: 20 # Integer | 1ページあたりの件数
}

begin
  #index transaction
  result = api_instance.transaction_index(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionApi->transaction_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| ページ番号 | [optional] [default to 1]
 **per_page** | **Integer**| 1ページあたりの件数 | [optional] [default to 20]

### Return type

[**MfkTransactions**](MfkTransactions.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.transactions



# **transaction_show**
> MfkTransaction transaction_show(id)

show transaction

取引IDを指定して取得

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = SwaggerClient::TransactionApi.new

id = "id_example" # String | 


begin
  #show transaction
  result = api_instance.transaction_show(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionApi->transaction_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MfkTransaction**](MfkTransaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.transaction



