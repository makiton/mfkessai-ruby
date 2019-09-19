require 'minitest/autorun'
require_relative './client'
require 'pry'

class CreditFacilityTest < Minitest::Test
  def setup
    @api = OpenapiClient::CreditFacilityApi.new
    sleep(0.1)
  end

  def test_no_parameters
    res = @api.get_credit_facilities_list
    assert_equal 6, res.items.count
    assert_equal false, res.pagination.has_previous
    assert_equal false, res.pagination.has_next
    assert_equal 20, res.pagination.limit
    assert_equal '7N4A-YY36', res.pagination.start

    current_start_date = res.items.first.start_date
    res.items.each do |item|
      assert current_start_date >= item.start_date
      current_start_date = item.start_date
    end
  end

  def test_get_first
    res = @api.get_credit_facilities_list(limit: 1)
    assert_equal 1, res.items.count
    assert_equal '7N4A-YY36', res.items.first.id
  end

  def test_limit_200
    res = @api.get_credit_facilities_list(limit: 200)
    assert_equal 6, res.items.count
  end

  def test_after
    res = @api.get_credit_facilities_list(after: '7N4A-YY36')
    assert_equal 5, res.items.count
    assert_equal '463Y-9946', res.items.first.id
  end

  def test_before
    res = @api.get_credit_facilities_list(before: '463A-AWR6')
    assert_equal 5, res.items.count
    assert_equal '7N4A-YY36', res.items.first.id
  end

  def test_before_and_after
    res = @api.get_credit_facilities_list(after: '6E4Y-RYPN', before: '463A-AWR6')
    assert_equal 5, res.items.count
    assert_equal '7N4A-YY36', res.items.first.id
  end

  def test_start_date_from
    res = @api.get_credit_facilities_list(start_date_from: "2019-09-01")
    res.items.each do |item|
      assert item.start_date >= Date.new(2019, 9, 1), "items.start_date=#{item.start_date} is before start_date_from"
    end
  end

  def test_start_date_to
    res = @api.get_credit_facilities_list(start_date_to: "2019-09-01")
    res.items.each do |item|
      assert item.start_date <= Date.new(2019, 9, 1), "items.start_date=#{item.start_date} is after start_date_to"
    end
  end

  def test_start_date_from_and_to
    res = @api.get_credit_facilities_list(start_date_from: "2019-09-02", start_date_to: "2019-09-01")
    assert_equal 0, res.items.count
  end

  def test_end_date_from
    res = @api.get_credit_facilities_list(end_date_from: "2019-09-01")
    res.items.each do |item|
      assert item.end_date >= Date.new(2019, 9, 1), "items.end_date=#{item.end_date} is before end_date_from"
    end
  end

  def test_end_date_to
    res = @api.get_credit_facilities_list(end_date_to: "2019-09-01")
    res.items.each do |item|
      assert item.end_date <= Date.new(2019, 9, 1), "items.end_date=#{item.end_date} is after end_date_to"
    end
  end

  def test_end_date_from_and_to
    res = @api.get_credit_facilities_list(end_date_from: "2019-09-02", end_date_to: "2019-09-01")
    assert_equal 0, res.items.count
  end

  def test_customer_id
    res = @api.get_credit_facilities_list(customer_id: 'NYV9-3YA6')
    res.items.each do |item|
      assert_equal  'NYV9-3YA6', item.customer_id
    end
  end

  def test_others_customer_id
    res = @api.get_credit_facilities_list(customer_id: 'GY9N-EWNM')
    assert_equal 0, res.items.count
  end

  # def test_status
  #   %w(inactive active expired).each do |status|
  #     res = @api.get_credit_facilities_list(status: [status])
  #     res.items.each do |item|
  #       puts "items: #{res.items.count}"
  #       assert_equal status, item.status
  #     end
  #   end
  # end

  def test_not_found
    requests = [
      'others', 'GY9N-EWNM',
    ]
    requests.each_slice(2) do |mes, id|
      assert_raises(OpenapiClient::ApiError, mes) do
        begin
          @api.get_credit_facility(id)
        rescue OpenapiClient::ApiError => e
          assert_equal 404, e.code, mes
          raise e
        end
      end
    end
  end

  def test_invalid_id
    assert_raises(OpenapiClient::ApiError) do
      begin
        @api.get_credit_facility('AAAA-BBBB')
      rescue OpenapiClient::ApiError => e
        assert_equal 400, e.code
        raise e
      end
    end
  end

  #def test_multiple_statuses
  #  statuses = %w(account_transfer_notified invoice_issued)
  #  puts statuses
  #  res = @api.get_credit_facilities_list(status: statuses)
  #  res.items.each do |item|
  #    assert_includes statuses, item.status
  #  end
  #end

  def test_invalid_requests
    requests = [
      'invalid limit', {limit: 0}, ArgumentError,
      'invalid limit', {limit: 201}, ArgumentError,
      'overlimit after', {after: '463A-AWR6'}, OpenapiClient::ApiError,
      'set others id to after', {after: '9NR3-P9A6'}, OpenapiClient::ApiError,
      'overlimit before', {before: '7N4A-YY36'}, OpenapiClient::ApiError,
      'set others id to before', {before: '9NR3-P9A6'}, OpenapiClient::ApiError,
      'set others id to after', {after: '9NR3-P9A6'}, OpenapiClient::ApiError,
      'set canceled id to before', {before: 'NPMP-AMA6'}, OpenapiClient::ApiError,
      'set canceled id to after', {after: 'NPMP-AMA6'}, OpenapiClient::ApiError,
      'set invalid id to customer_id', {customer_id: 'AAAA-BBBB'}, OpenapiClient::ApiError,
    ]
    requests.each_slice(3) do |mes, request, error_type|
      sleep(0.1)
      assert_raises(error_type, mes) do
        begin
          @api.get_credit_facilities_list(request)
        rescue OpenapiClient::ApiError => e
          assert_equal 400, e.code, mes
          raise e
        rescue => e
          raise e
        end
      end
    end
  end
end


