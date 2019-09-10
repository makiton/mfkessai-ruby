# OpenapiClient::CustomerExaminationApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer_examination**](CustomerExaminationApi.md#create_customer_examination) | **POST** /customer_examinations | 顧客を指定して顧客審査を申請することができます。申請後2営業日以内に審査いたします。
[**get_customer_examination**](CustomerExaminationApi.md#get_customer_examination) | **GET** /customer_examinations/{customer_examination_id} | 顧客審査IDを指定して対象顧客審査１件を取得することができます。
[**get_customer_examinations_list**](CustomerExaminationApi.md#get_customer_examinations_list) | **GET** /customer_examinations | 顧客審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。



## create_customer_examination

> CustomerExamination create_customer_examination(payload)

顧客を指定して顧客審査を申請することができます。申請後2営業日以内に審査いたします。

顧客審査申請

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

api_instance = OpenapiClient::CustomerExaminationApi.new
payload = OpenapiClient::CustomerExaminationPayload.new # CustomerExaminationPayload | 顧客審査申請情報です。

begin
  #顧客を指定して顧客審査を申請することができます。申請後2営業日以内に審査いたします。
  result = api_instance.create_customer_examination(payload)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CustomerExaminationApi->create_customer_examination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**CustomerExaminationPayload**](CustomerExaminationPayload.md)| 顧客審査申請情報です。 | 

### Return type

[**CustomerExamination**](CustomerExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer_examination

> CustomerExamination get_customer_examination(customer_examination_id)

顧客審査IDを指定して対象顧客審査１件を取得することができます。

顧客審査取得

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

api_instance = OpenapiClient::CustomerExaminationApi.new
customer_examination_id = 'customer_examination_id_example' # String | 対象の顧客審査IDを指定してください。

begin
  #顧客審査IDを指定して対象顧客審査１件を取得することができます。
  result = api_instance.get_customer_examination(customer_examination_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CustomerExaminationApi->get_customer_examination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_examination_id** | **String**| 対象の顧客審査IDを指定してください。 | 

### Return type

[**CustomerExamination**](CustomerExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_examinations_list

> InlineResponse2002 get_customer_examinations_list(opts)

顧客審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。

顧客審査一覧取得

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

api_instance = OpenapiClient::CustomerExaminationApi.new
opts = {
  customer_id: 'customer_id_example', # String | 顧客IDを指定します。指定された顧客に対する顧客審査を取得します。
  status: 'status_example', # String | 顧客審査のステータスを指定します。未審査(`unexamined`)、審査通過(`passed`)、審査否決(`rejected`)のいずれかを指定してください。
  created_at_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 指定された日時以降に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の`date-time`(2019-04-01T10:36:43+09:00)で指定してください。
  created_at_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 指定された日時以前に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の`date-time`(2019-04-01T10:36:43+09:00)で指定してください。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  #顧客審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。
  result = api_instance.get_customer_examinations_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CustomerExaminationApi->get_customer_examinations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| 顧客IDを指定します。指定された顧客に対する顧客審査を取得します。 | [optional] 
 **status** | **String**| 顧客審査のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)のいずれかを指定してください。 | [optional] 
 **created_at_from** | **DateTime**| 指定された日時以降に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の&#x60;date-time&#x60;(2019-04-01T10:36:43+09:00)で指定してください。 | [optional] 
 **created_at_to** | **DateTime**| 指定された日時以前に作成された請求先を取得します。指定された日時に作成されたものも含まれます。 RFC3399の&#x60;date-time&#x60;(2019-04-01T10:36:43+09:00)で指定してください。 | [optional] 
 **after** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **before** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **limit** | **Integer**| 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

