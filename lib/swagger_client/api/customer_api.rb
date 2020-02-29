=begin
#MF KESSAI REST API

#MF KESSAI REST API

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwaggerClient
  class CustomerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # create examination customer
    # 顧客IDを指定して顧客審査を申請
    # @param id 顧客ID
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [MfkCustomerExamination]
    def customer_create_examination(id, payload, opts = {})
      data, _status_code, _headers = customer_create_examination_with_http_info(id, payload, opts)
      return data
    end

    # create examination customer
    # 顧客IDを指定して顧客審査を申請
    # @param id 顧客ID
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkCustomerExamination, Fixnum, Hash)>] MfkCustomerExamination data, response status code and response headers
    def customer_create_examination_with_http_info(id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.customer_create_examination ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomerApi.customer_create_examination"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling CustomerApi.customer_create_examination"
      end
      # resource path
      local_var_path = "/customers/{id}/examination".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.mfk.customer_examination', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MfkCustomerExamination')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#customer_create_examination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # credit facility customer
    # 顧客IDを指定して与信枠を取得
    # @param id 顧客ID
    # @param [Hash] opts the optional parameters
    # @return [MfkCreditFacility]
    def customer_credit_facility(id, opts = {})
      data, _status_code, _headers = customer_credit_facility_with_http_info(id, opts)
      return data
    end

    # credit facility customer
    # 顧客IDを指定して与信枠を取得
    # @param id 顧客ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkCreditFacility, Fixnum, Hash)>] MfkCreditFacility data, response status code and response headers
    def customer_credit_facility_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.customer_credit_facility ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomerApi.customer_credit_facility"
      end
      # resource path
      local_var_path = "/customers/{id}/credit_facility".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.credit_facility'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MfkCreditFacility')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#customer_credit_facility\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # examination customer
    # 顧客IDを指定して顧客審査を取得
    # @param id 顧客ID
    # @param [Hash] opts the optional parameters
    # @return [MfkCustomerExamination]
    def customer_examination(id, opts = {})
      data, _status_code, _headers = customer_examination_with_http_info(id, opts)
      return data
    end

    # examination customer
    # 顧客IDを指定して顧客審査を取得
    # @param id 顧客ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkCustomerExamination, Fixnum, Hash)>] MfkCustomerExamination data, response status code and response headers
    def customer_examination_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.customer_examination ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomerApi.customer_examination"
      end
      # resource path
      local_var_path = "/customers/{id}/examination".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.customer_examination'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MfkCustomerExamination')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#customer_examination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # index customer
    # 顧客リストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page ページ番号 (default to 1)
    # @option opts [Integer] :per_page 1ページあたりの件数 (default to 20)
    # @return [MfkCustomers]
    def customer_index(opts = {})
      data, _status_code, _headers = customer_index_with_http_info(opts)
      return data
    end

    # index customer
    # 顧客リストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page ページ番号
    # @option opts [Integer] :per_page 1ページあたりの件数
    # @return [Array<(MfkCustomers, Fixnum, Hash)>] MfkCustomers data, response status code and response headers
    def customer_index_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.customer_index ..."
      end
      # resource path
      local_var_path = "/customers"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.customers'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MfkCustomers')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#customer_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # show customer
    # 顧客IDを指定して取得
    # @param id 顧客ID
    # @param [Hash] opts the optional parameters
    # @return [MfkCustomer]
    def customer_show(id, opts = {})
      data, _status_code, _headers = customer_show_with_http_info(id, opts)
      return data
    end

    # show customer
    # 顧客IDを指定して取得
    # @param id 顧客ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkCustomer, Fixnum, Hash)>] MfkCustomer data, response status code and response headers
    def customer_show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.customer_show ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomerApi.customer_show"
      end
      # resource path
      local_var_path = "/customers/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.customer'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MfkCustomer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#customer_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end