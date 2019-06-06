# SwaggerClient::ExaminationApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**examination_create**](ExaminationApi.md#examination_create) | **POST** /examinations | create examination
[**examination_create_transaction**](ExaminationApi.md#examination_create_transaction) | **POST** /examinations/{id}/transaction | create_transaction examination
[**examination_index**](ExaminationApi.md#examination_index) | **GET** /examinations | index examination
[**examination_show**](ExaminationApi.md#examination_show) | **GET** /examinations/{id} | show examination


# **examination_create**
> MfkExamination examination_create(payload)

create examination

審査のための取引情報を登録

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

api_instance = SwaggerClient::ExaminationApi.new

payload = SwaggerClient::ExaminationPayload.new # ExaminationPayload | 


begin
  #create examination
  result = api_instance.examination_create(payload)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExaminationApi->examination_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**ExaminationPayload**](ExaminationPayload.md)|  | 

### Return type

[**MfkExamination**](MfkExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.mfk.examination, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error



# **examination_create_transaction**
> MfkTransaction examination_create_transaction(id, payload)

create_transaction examination

審査時に登録した情報をもとに取引を登録

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

api_instance = SwaggerClient::ExaminationApi.new

id = "id_example" # String | 

payload = SwaggerClient::CreateTransactionByExaminationPayload.new # CreateTransactionByExaminationPayload | 


begin
  #create_transaction examination
  result = api_instance.examination_create_transaction(id, payload)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExaminationApi->examination_create_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **payload** | [**CreateTransactionByExaminationPayload**](CreateTransactionByExaminationPayload.md)|  | 

### Return type

[**MfkTransaction**](MfkTransaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.mfk.transaction, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error



# **examination_index**
> MfkExaminations examination_index(opts)

index examination

審査リストを取得

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

api_instance = SwaggerClient::ExaminationApi.new

opts = { 
  page: 1, # Integer | ページ番号
  per_page: 20 # Integer | 1ページあたりの件数
}

begin
  #index examination
  result = api_instance.examination_index(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExaminationApi->examination_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| ページ番号 | [optional] [default to 1]
 **per_page** | **Integer**| 1ページあたりの件数 | [optional] [default to 20]

### Return type

[**MfkExaminations**](MfkExaminations.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.examinations



# **examination_show**
> MfkExamination examination_show(id)

show examination

IDを指定して審査情報を取得

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

api_instance = SwaggerClient::ExaminationApi.new

id = "id_example" # String | 


begin
  #show examination
  result = api_instance.examination_show(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExaminationApi->examination_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MfkExamination**](MfkExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.examination



