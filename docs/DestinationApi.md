# SwaggerClient::DestinationApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destination_create**](DestinationApi.md#destination_create) | **POST** /destinations | create destination


# **destination_create**
> MfkDestination destination_create(payload)

create destination

請求先を登録

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

api_instance = SwaggerClient::DestinationApi.new

payload = SwaggerClient::DestinationPayload.new # DestinationPayload | 


begin
  #create destination
  result = api_instance.destination_create(payload)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DestinationApi->destination_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**DestinationPayload**](DestinationPayload.md)|  | 

### Return type

[**MfkDestination**](MfkDestination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.goa.error, application/vnd.mfk.destination, application/vnd.goa.error, application/vnd.goa.error, application/vnd.goa.error



