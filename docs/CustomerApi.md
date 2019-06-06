# SwaggerClient::CustomerApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customer_create_examination**](CustomerApi.md#customer_create_examination) | **POST** /customers/{id}/examination | create examination customer
[**customer_credit_facility**](CustomerApi.md#customer_credit_facility) | **GET** /customers/{id}/credit_facility | credit facility customer
[**customer_examination**](CustomerApi.md#customer_examination) | **GET** /customers/{id}/examination | examination customer
[**customer_index**](CustomerApi.md#customer_index) | **GET** /customers | index customer
[**customer_show**](CustomerApi.md#customer_show) | **GET** /customers/{id} | show customer


# **customer_create_examination**
> MfkCustomerExamination customer_create_examination(id, payload)

create examination customer

顧客IDを指定して顧客審査を申請

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

api_instance = SwaggerClient::CustomerApi.new

id = "id_example" # String | 顧客ID

payload = SwaggerClient::CustomerExaminationPayload.new # CustomerExaminationPayload | 


begin
  #create examination customer
  result = api_instance.customer_create_examination(id, payload)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerApi->customer_create_examination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| 顧客ID | 
 **payload** | [**CustomerExaminationPayload**](CustomerExaminationPayload.md)|  | 

### Return type

[**MfkCustomerExamination**](MfkCustomerExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.mfk.customer_examination, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error



# **customer_credit_facility**
> MfkCreditFacility customer_credit_facility(id)

credit facility customer

顧客IDを指定して与信枠を取得

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

api_instance = SwaggerClient::CustomerApi.new

id = "id_example" # String | 顧客ID


begin
  #credit facility customer
  result = api_instance.customer_credit_facility(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerApi->customer_credit_facility: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| 顧客ID | 

### Return type

[**MfkCreditFacility**](MfkCreditFacility.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.credit_facility



# **customer_examination**
> MfkCustomerExamination customer_examination(id)

examination customer

顧客IDを指定して顧客審査を取得

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

api_instance = SwaggerClient::CustomerApi.new

id = "id_example" # String | 顧客ID


begin
  #examination customer
  result = api_instance.customer_examination(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerApi->customer_examination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| 顧客ID | 

### Return type

[**MfkCustomerExamination**](MfkCustomerExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.customer_examination



# **customer_index**
> MfkCustomers customer_index(opts)

index customer

顧客リストを取得

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

api_instance = SwaggerClient::CustomerApi.new

opts = { 
  page: 1, # Integer | ページ番号
  per_page: 20 # Integer | 1ページあたりの件数
}

begin
  #index customer
  result = api_instance.customer_index(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerApi->customer_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| ページ番号 | [optional] [default to 1]
 **per_page** | **Integer**| 1ページあたりの件数 | [optional] [default to 20]

### Return type

[**MfkCustomers**](MfkCustomers.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.customers



# **customer_show**
> MfkCustomer customer_show(id)

show customer

顧客IDを指定して取得

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

api_instance = SwaggerClient::CustomerApi.new

id = "id_example" # String | 顧客ID


begin
  #show customer
  result = api_instance.customer_show(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerApi->customer_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| 顧客ID | 

### Return type

[**MfkCustomer**](MfkCustomer.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error, application/vnd.mfk.customer



