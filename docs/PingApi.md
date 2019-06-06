# SwaggerClient::PingApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ping_show**](PingApi.md#ping_show) | **GET** /ping | show ping


# **ping_show**
> ping_show

show ping

Send ping to service

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

api_instance = SwaggerClient::PingApi.new

begin
  #show ping
  api_instance.ping_show
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PingApi->ping_show: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: text/plain



