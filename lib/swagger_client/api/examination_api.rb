=begin
#MF KESSAI REST API

#MF KESSAI REST API

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwaggerClient
  class ExaminationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # create examination
    # 審査のための取引情報を登録
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [MfkExamination]
    def examination_create(payload, opts = {})
      data, _status_code, _headers = examination_create_with_http_info(payload, opts)
      return data
    end

    # create examination
    # 審査のための取引情報を登録
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkExamination, Fixnum, Hash)>] MfkExamination data, response status code and response headers
    def examination_create_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExaminationApi.examination_create ..."
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling ExaminationApi.examination_create"
      end
      # resource path
      local_var_path = "/examinations"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.mfk.examination', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error'])
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
        :return_type => 'MfkExamination')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExaminationApi#examination_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # create_transaction examination
    # 審査時に登録した情報をもとに取引を登録
    # @param id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [MfkTransaction]
    def examination_create_transaction(id, payload, opts = {})
      data, _status_code, _headers = examination_create_transaction_with_http_info(id, payload, opts)
      return data
    end

    # create_transaction examination
    # 審査時に登録した情報をもとに取引を登録
    # @param id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkTransaction, Fixnum, Hash)>] MfkTransaction data, response status code and response headers
    def examination_create_transaction_with_http_info(id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExaminationApi.examination_create_transaction ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExaminationApi.examination_create_transaction"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling ExaminationApi.examination_create_transaction"
      end
      # resource path
      local_var_path = "/examinations/{id}/transaction".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'MfkTransaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExaminationApi#examination_create_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # index examination
    # 審査リストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page ページ番号 (default to 1)
    # @option opts [Integer] :per_page 1ページあたりの件数 (default to 20)
    # @return [MfkExaminations]
    def examination_index(opts = {})
      data, _status_code, _headers = examination_index_with_http_info(opts)
      return data
    end

    # index examination
    # 審査リストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page ページ番号
    # @option opts [Integer] :per_page 1ページあたりの件数
    # @return [Array<(MfkExaminations, Fixnum, Hash)>] MfkExaminations data, response status code and response headers
    def examination_index_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExaminationApi.examination_index ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] > 2147483647
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ExaminationApi.examination_index, must be smaller than or equal to 2147483647.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ExaminationApi.examination_index, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ExaminationApi.examination_index, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ExaminationApi.examination_index, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/examinations"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.examinations'])
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
        :return_type => 'MfkExaminations')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExaminationApi#examination_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # show examination
    # IDを指定して審査情報を取得
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [MfkExamination]
    def examination_show(id, opts = {})
      data, _status_code, _headers = examination_show_with_http_info(id, opts)
      return data
    end

    # show examination
    # IDを指定して審査情報を取得
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MfkExamination, Fixnum, Hash)>] MfkExamination data, response status code and response headers
    def examination_show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExaminationApi.examination_show ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExaminationApi.examination_show"
      end
      # resource path
      local_var_path = "/examinations/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.goa.error', 'application/vnd.mfk.examination'])
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
        :return_type => 'MfkExamination')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExaminationApi#examination_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
