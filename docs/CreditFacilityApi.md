# OpenapiClient::CreditFacilityApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_credit_facilities_list**](CreditFacilityApi.md#get_credit_facilities_list) | **GET** /credit_facilities | 与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。
[**get_credit_facility**](CreditFacilityApi.md#get_credit_facility) | **GET** /credit_facilities/{credit_facility_id} | 与信枠IDを指定して対象与信枠１件を取得することができます。



## get_credit_facilities_list

> InlineResponse2003 get_credit_facilities_list(opts)

与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。

与信枠一覧取得

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

api_instance = OpenapiClient::CreditFacilityApi.new
opts = {
  customer_id: 'customer_id_example', # String | 顧客IDを指定します。指定された顧客の与信枠を取得します。
  start_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 取引登録期間開始日が指定された日時よりも後の顧客を取得します。指定された日時のものも含まれます。
  start_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 取引登録期間開始日が指定された日時よりも前の顧客を取得します。指定された日時のものも含まれます。
  end_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 取引登録期間終了日が指定された日時よりも後の顧客を取得します。指定された日時のものも含まれます。
  end_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 取引登録期間終了日が指定された日時よりも前の顧客を取得します。指定された日時のものも含まれます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  #与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。
  result = api_instance.get_credit_facilities_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CreditFacilityApi->get_credit_facilities_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| 顧客IDを指定します。指定された顧客の与信枠を取得します。 | [optional] 
 **start_date_from** | **DateTime**| 取引登録期間開始日が指定された日時よりも後の顧客を取得します。指定された日時のものも含まれます。 | [optional] 
 **start_date_to** | **DateTime**| 取引登録期間開始日が指定された日時よりも前の顧客を取得します。指定された日時のものも含まれます。 | [optional] 
 **end_date_from** | **DateTime**| 取引登録期間終了日が指定された日時よりも後の顧客を取得します。指定された日時のものも含まれます。 | [optional] 
 **end_date_to** | **DateTime**| 取引登録期間終了日が指定された日時よりも前の顧客を取得します。指定された日時のものも含まれます。 | [optional] 
 **after** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **before** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **limit** | **Integer**| 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_credit_facility

> CreditFacility get_credit_facility(credit_facility_id)

与信枠IDを指定して対象与信枠１件を取得することができます。

与信枠取得

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

api_instance = OpenapiClient::CreditFacilityApi.new
credit_facility_id = 'credit_facility_id_example' # String | 対象の与信枠IDを指定してください。

begin
  #与信枠IDを指定して対象与信枠１件を取得することができます。
  result = api_instance.get_credit_facility(credit_facility_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CreditFacilityApi->get_credit_facility: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_facility_id** | **String**| 対象の与信枠IDを指定してください。 | 

### Return type

[**CreditFacility**](CreditFacility.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

