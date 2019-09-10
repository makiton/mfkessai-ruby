# OpenapiClient::PayoutApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payout**](PayoutApi.md#get_payout) | **GET** /payouts/{payout_id} | 
[**get_payouts_list**](PayoutApi.md#get_payouts_list) | **GET** /payouts | 



## get_payout

> Payout get_payout(payout_id)



振込取得

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

api_instance = OpenapiClient::PayoutApi.new
payout_id = 'payout_id_example' # String | 対象の振込ID。

begin
  result = api_instance.get_payout(payout_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PayoutApi->get_payout: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_id** | **String**| 対象の振込ID。 | 

### Return type

[**Payout**](Payout.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payouts_list

> InlineResponse2006 get_payouts_list(opts)



振込一覧取得

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

api_instance = OpenapiClient::PayoutApi.new
opts = {
  status: ['status_example'], # Array<String> | 振込ステータスを指定します。該当するステータスの振込が返却されます。指定できる値は `in_progress`(振込手続中), `completed`(振込完了)の2種類のみです。
  payout_date_from: Date.parse('2013-10-20'), # Date | 日付を指定します。指定した日付以降の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。
  payout_date_to: Date.parse('2013-10-20'), # Date | 日付を指定します。指定した日付以前の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  result = api_instance.get_payouts_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PayoutApi->get_payouts_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**Array&lt;String&gt;**](String.md)| 振込ステータスを指定します。該当するステータスの振込が返却されます。指定できる値は &#x60;in_progress&#x60;(振込手続中), &#x60;completed&#x60;(振込完了)の2種類のみです。 | [optional] 
 **payout_date_from** | **Date**| 日付を指定します。指定した日付以降の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。 | [optional] 
 **payout_date_to** | **Date**| 日付を指定します。指定した日付以前の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。 | [optional] 
 **after** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **before** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **limit** | **Integer**| 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

