require 'minitest/autorun'
require_relative './client'
require 'pry'

class DestinationsTest < Minitest::Test
  def setup
    @api = OpenapiClient::DestinationApi.new
  end

  def test_success
    requests = [
      # 'minimum payload', {},
      # 'long address1', {address1: "東京都1"*25},
      # 'long address2', {address2: "東京都1"*25},
      # 'long email', {email: "a"*243+"@example.com"},
      # 'cc email', {cc_emails: ["a"*243+"@example.com"] * 4},
      # 'department', {department: '経理部'*16+'経理'},
      # 'name', {name: '担当'*15},
      # 'kana', {name_kana: 'タントウ'*7+'タン'},
      'title', {title: '肩書'*15},
    ]
    requests.each_slice(2) do |mes, request|
      sleep(0.1)
      res = @api.create_destination(payload(request))
      assert_instance_of OpenapiClient::Destination, res, mes
    end
  end

  def test_invlid_requests
    requests = [
      'invalid customer_id', {customer_id: 'AAAA-BBBB'}, OpenapiClient::ApiError,
      'empty customer_id', {customer_id: nil}, OpenapiClient::ApiError,
      'empty address1', {address1: nil}, OpenapiClient::ApiError,
      'invalid address1', {address1: "ほげほげ"}, ArgumentError,
      'long address1', {address1: "東京都1"*25 + "a"}, ArgumentError,
      'long address2', {address1: "東京都1"*25 + "a"}, ArgumentError,
      'long email', {email: "a"*244+"@example.com"}, ArgumentError,
      'invalid email', {email: "a"*255}, OpenapiClient::ApiError,
      'empty email', {email: nil}, OpenapiClient::ApiError,
      'empty tel', {tel: nil}, OpenapiClient::ApiError,
      'invalid tel', {tel: '1111111111'}, ArgumentError,
      'empty zipcode', {zip_code: nil}, OpenapiClient::ApiError,
      'invalid zipcode', {zip_code: '123'}, ArgumentError,
      'invalid ccemail', {cc_emails: %w(a@example.jp aaa)}, OpenapiClient::ApiError,
      'too many ccemail', {cc_emails: %w(a@example.jp b@example.jp c@example.jp d@example.jp e@example.jp)}, OpenapiClient::ApiError,
      'long ccemail', {cc_emails: ['a@example.jp', 'b'*244+'example.com']}, OpenapiClient::ApiError,
      'long department', {department: '経理部'*17}, ArgumentError,
      'long name', {name: '担当'*15+'者'}, ArgumentError,
      'long kana', {name_kana: 'タントウ'*7+'タント'}, ArgumentError,
      'long title', {title: '肩書'*15+'長'}, ArgumentError,
    ]
    requests.each_slice(3) do |mes, request, error_type|
      sleep(0.1)
      assert_raises(error_type, mes) do
        begin
          @api.create_destination(payload(
            request,
          ))
        rescue OpenapiClient::ApiError => e
          assert_equal 400, e.code, mes
          raise e
        rescue => e
          raise e
        end
      end
    end
  end

  def test_others_customer
    assert_raises(OpenapiClient::ApiError) do
      begin
        @api.create_destination(payload(
          customer_id: '9NR3-P9A6',
        ))
      rescue => e
        assert_equal 404, e.code
        raise e
      end
    end
  end

  def test_invalid_parameter
    assert_raises(ArgumentError) do
      @api.create_destination(payload(
        unknown_parameter: 'hoge',
      ))
    end
  end

  def test_to_get_existing_destination_by_same_parameter_registration
    first = @api.create_destination(payload)
    second = @api.create_destination(payload)
    assert_equal first, second
  end

  def payload(override = {})
    OpenapiClient::DestinationPayload.new({
      address1: '東京都千代田区1-2-3',
      # address2: 'サンプルビル3F',
      # cc_emails: %w(another.tanto1@example.jp another.tanto2@example.jp),
      customer_id: 'NYV9-3YA6',
      # department: '経理部',
      email: 'kessai.tanto@example.jp',
      name: '担当　太郎',
      name_kana: 'タントウ　タロウ',
      tel: '03-1234-5678',
      # title: '部長',
      zip_code: '111-1111'
    }.merge(override).compact)
  end
end
