# OpenapiClient::BillingApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_billing**](BillingApi.md#get_billing) | **GET** /billings/{billing_id} | 
[**get_billings_list**](BillingApi.md#get_billings_list) | **GET** /billings | 



## get_billing

> Billing get_billing(billing_id)



請求取得

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

api_instance = OpenapiClient::BillingApi.new
billing_id = 'billing_id_example' # String | 対象の請求IDを指定してください。

begin
  result = api_instance.get_billing(billing_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling BillingApi->get_billing: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_id** | **String**| 対象の請求IDを指定してください。 | 

### Return type

[**Billing**](Billing.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_billings_list

> InlineResponse2005 get_billings_list(opts)



請求一覧取得

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

api_instance = OpenapiClient::BillingApi.new
opts = {
  customer_id: 'customer_id_example', # String | 任意の顧客IDを指定します。指定した顧客への請求が返却されます。
  status: ['status_example'], # Array<String> | 請求ステータスを指定します。該当するステータスの請求が返却されます。複数指定することが可能です。指定できる値は `scheduled`(請求予定), `invoice_issued`(請求書発行済), `account_transfer_notified`(口座振替通知済)の3種類のみです。
  due_date_from: 'due_date_from_example', # String | 日付を指定します。指定した日付以降の支払期限となっている請求を取得できます。指定された日付のものも含まれます。
  due_date_to: 'due_date_to_example', # String | 日付を指定します。指定した日付以前の支払期限となっている請求を取得できます。指定された日付のものも含まれます。
  issue_date_from: 'issue_date_from_example', # String | 日付を指定します。指定した日付以降の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。
  issue_date_to: 'issue_date_to_example', # String | 日付を指定します。指定した日付以前の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。
  unpaid: true, # Boolean | 未入金のあり(`true`)、なし(`false`)を指定します。空文字が指定された場合、`false`として扱われます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  result = api_instance.get_billings_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling BillingApi->get_billings_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| 任意の顧客IDを指定します。指定した顧客への請求が返却されます。 | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| 請求ステータスを指定します。該当するステータスの請求が返却されます。複数指定することが可能です。指定できる値は &#x60;scheduled&#x60;(請求予定), &#x60;invoice_issued&#x60;(請求書発行済), &#x60;account_transfer_notified&#x60;(口座振替通知済)の3種類のみです。 | [optional] 
 **due_date_from** | **String**| 日付を指定します。指定した日付以降の支払期限となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] 
 **due_date_to** | **String**| 日付を指定します。指定した日付以前の支払期限となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] 
 **issue_date_from** | **String**| 日付を指定します。指定した日付以降の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] 
 **issue_date_to** | **String**| 日付を指定します。指定した日付以前の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] 
 **unpaid** | **Boolean**| 未入金のあり(&#x60;true&#x60;)、なし(&#x60;false&#x60;)を指定します。空文字が指定された場合、&#x60;false&#x60;として扱われます。 | [optional] 
 **after** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **before** | **String**| 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] 
 **limit** | **Integer**| 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

