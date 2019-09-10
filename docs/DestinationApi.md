# OpenapiClient::DestinationApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_destination**](DestinationApi.md#create_destination) | **POST** /destinations | 顧客を指定して請求先を登録することができます。
[**get_destination**](DestinationApi.md#get_destination) | **GET** /destinations/{destination_id} | 請求先IDを指定して対象請求先１件を取得することができます。
[**get_destinations_list**](DestinationApi.md#get_destinations_list) | **GET** /destinations | 請求先の一覧を取得します。顧客IDや顧客番号で特定の顧客に紐づく請求先に絞り込んで取得することもできます。



## create_destination

> Destination create_destination(payload)

顧客を指定して請求先を登録することができます。

請求先登録

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

api_instance = OpenapiClient::DestinationApi.new
payload = OpenapiClient::DestinationPayload.new # DestinationPayload | 請求先登録情報です。

begin
  #顧客を指定して請求先を登録することができます。
  result = api_instance.create_destination(payload)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DestinationApi->create_destination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**DestinationPayload**](DestinationPayload.md)| 請求先登録情報です。 | 

### Return type

[**Destination**](Destination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_destination

> Destination get_destination(destination_id)

請求先IDを指定して対象請求先１件を取得することができます。

請求先取得

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

api_instance = OpenapiClient::DestinationApi.new
destination_id = 'destination_id_example' # String | 対象の請求先IDを指定してください。

begin
  #請求先IDを指定して対象請求先１件を取得することができます。
  result = api_instance.get_destination(destination_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DestinationApi->get_destination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destination_id** | **String**| 対象の請求先IDを指定してください。 | 

### Return type

[**Destination**](Destination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_destinations_list

> InlineResponse2001 get_destinations_list(opts)

請求先の一覧を取得します。顧客IDや顧客番号で特定の顧客に紐づく請求先に絞り込んで取得することもできます。

請求先一覧取得

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

api_instance = OpenapiClient::DestinationApi.new
opts = {
  customer_id: 'customer_id_example', # String | 顧客IDを指定します。指定された顧客の請求先を取得します。`customer_number`に別の顧客の顧客番号を指定した場合には該当請求先は0件になります。
  customer_number: 'customer_number_example', # String | 顧客番号を指定します。指定された顧客の請求先を取得します。`customer_id`に別の顧客の顧客IDを指定した場合には該当請求先は0件になります。
  created_at_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 指定された日時以降に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の`date-time`(2019-04-01T10:36:43+09:00)で指定してください。
  created_at_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 指定された日時以前に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の`date-time`(2019-04-01T10:36:43+09:00)で指定してください。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  #請求先の一覧を取得します。顧客IDや顧客番号で特定の顧客に紐づく請求先に絞り込んで取得することもできます。
  result = api_instance.get_destinations_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DestinationApi->get_destinations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| 顧客IDを指定します。指定された顧客の請求先を取得します。&#x60;customer_number&#x60;に別の顧客の顧客番号を指定した場合には該当請求先は0件になります。 | [optional] 
 **customer_number** | **String**| 顧客番号を指定します。指定された顧客の請求先を取得します。&#x60;customer_id&#x60;に別の顧客の顧客IDを指定した場合には該当請求先は0件になります。 | [optional] 
 **created_at_from** | **DateTime**| 指定された日時以降に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の&#x60;date-time&#x60;(2019-04-01T10:36:43+09:00)で指定してください。 | [optional] 
 **created_at_to** | **DateTime**| 指定された日時以前に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の&#x60;date-time&#x60;(2019-04-01T10:36:43+09:00)で指定してください。 | [optional] 
 **after** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **before** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **limit** | **Integer**| 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

