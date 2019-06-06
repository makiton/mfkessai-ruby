=begin
#MF KESSAI REST API

#MF KESSAI REST API

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwaggerClient
  class TransactionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # cancel transaction
    # 取引をキャンセル
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [MfkTransaction]
    def transaction_cancel(id, opts = {})
      data, _status_code, _headers = transaction_cancel_with_http_info(id, opts)
      return data
    end

    # cancel transaction
    # 取引をキャンセル
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkTransaction, Fixnum, Hash)>] MfkTransaction data, response status code and response headers
    def transaction_cancel_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionApi.transaction_cancel ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionApi.transaction_cancel"
      end
      # resource path
      local_var_path = "/transactions/{id}/cancel".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.transaction'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MfkTransaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#transaction_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # create transaction
    # 取引を登録
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [MfkTransactionDetails]
    def transaction_create(payload, opts = {})
      data, _status_code, _headers = transaction_create_with_http_info(payload, opts)
      return data
    end

    # create transaction
    # 取引を登録
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkTransactionDetails, Fixnum, Hash)>] MfkTransactionDetails data, response status code and response headers
    def transaction_create_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionApi.transaction_create ..."
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling TransactionApi.transaction_create"
      end
      # resource path
      local_var_path = "/transactions"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.mfk.transaction', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error'])
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
        :return_type => 'MfkTransactionDetails')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#transaction_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # index transaction
    # 取引リストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page ページ番号 (default to 1)
    # @option opts [Integer] :per_page 1ページあたりの件数 (default to 20)
    # @return [MfkTransactions]
    def transaction_index(opts = {})
      data, _status_code, _headers = transaction_index_with_http_info(opts)
      return data
    end

    # index transaction
    # 取引リストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page ページ番号
    # @option opts [Integer] :per_page 1ページあたりの件数
    # @return [Array<(MfkTransactions, Fixnum, Hash)>] MfkTransactions data, response status code and response headers
    def transaction_index_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionApi.transaction_index ..."
      end
      # resource path
      local_var_path = "/transactions"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.transactions'])
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
        :return_type => 'MfkTransactions')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#transaction_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # show transaction
    # 取引IDを指定して取得
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [MfkTransaction]
    def transaction_show(id, opts = {})
      data, _status_code, _headers = transaction_show_with_http_info(id, opts)
      return data
    end

    # show transaction
    # 取引IDを指定して取得
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkTransaction, Fixnum, Hash)>] MfkTransaction data, response status code and response headers
    def transaction_show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionApi.transaction_show ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionApi.transaction_show"
      end
      # resource path
      local_var_path = "/transactions/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.transaction'])
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
        :return_type => 'MfkTransaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#transaction_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
