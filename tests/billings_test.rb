require 'minitest/autorun'
require_relative './client'
require 'pry'

class BillingsTest < Minitest::Test
  def setup
    @api = OpenapiClient::BillingApi.new
    sleep(0.1)
  end

  def test_no_parameters
    res = @api.get_billings_list
    assert_equal 20, res.items.count
    assert_equal false, res.pagination.has_previous
    assert_equal true, res.pagination.has_next
    assert_equal 20, res.pagination.limit
    assert_equal '6E4Y-RYPN', res.pagination.start

    current_issue_date = res.items.first.issue_date
    res.items.each do |item|
      assert current_issue_date >= item.issue_date
      current_issue_date = item.issue_date
    end
  end

  def test_get_first
    res = @api.get_billings_list(limit: 1)
    assert_equal 1, res.items.count
    assert_equal '6E4Y-RYPN', res.items.first.id
  end

  def test_limit_200
    res = @api.get_billings_list(limit: 200)
    assert_equal 200, res.items.count
  end

  def test_after
    res = @api.get_billings_list(after: '6E4Y-RYPN')
    assert_equal 20, res.items.count
    assert_equal '64MV-MYGN', res.items.first.id
  end

  def test_before
    res = @api.get_billings_list(before: '96RA-P4EN')
    assert_equal 20, res.items.count
    assert_equal 'MN99-WG9N', res.items.first.id
  end

  def test_before_and_after
    res = @api.get_billings_list(after: '6E4Y-RYPN', before: '96RA-P4EN')
    assert_equal 20, res.items.count
    assert_equal 'MN99-WG9N', res.items.first.id
  end

  def test_due_date_from
    res = @api.get_billings_list(due_date_from: "2019-09-30")
    res.items.each do |item|
      assert item.due_date >= Date.new(2019, 9, 30), "items.due_date=#{item.due_date} is before due_date_from"
    end
  end

  def test_due_date_to
    res = @api.get_billings_list(due_date_to: "2019-08-31")
    res.items.each do |item|
      assert item.due_date <= Date.new(2019, 8, 31), "items.due_date=#{item.due_date} is after due_date_to"
    end
  end

  def test_due_date_from_and_to
    res = @api.get_billings_list(due_date_from: "2019-09-30", due_date_to: "2019-08-31")
    assert_equal 0, res.items.count
  end

  def test_issue_date_from
    res = @api.get_billings_list(issue_date_from: "2019-06-30")
    res.items.each do |item|
      assert item.issue_date >= Date.new(2019, 6, 30), "items.issue_date=#{item.issue_date} is before issue_date_from"
    end
  end

  def test_issue_date_to
    res = @api.get_billings_list(issue_date_to: "2019-05-31")
    res.items.each do |item|
      assert item.issue_date <= Date.new(2019, 8, 31), "items.issue_date=#{item.issue_date} is after issue_date_to"
    end
  end

  def test_issue_date_from_and_to
    res = @api.get_billings_list(issue_date_from: "2019-06-30", issue_date_to: "2019-05-31")
    assert_equal 0, res.items.count
  end

  def test_customer_id
    res = @api.get_billings_list(customer_id: '6MM7-M3M6')
    res.items.each do |item|
      assert_equal '6MM7-M3M6', item.customer_id
    end
  end

  def test_others_customer_id
    res = @api.get_billings_list(customer_id: 'GY9N-EWNM')
    assert_equal 0, res.items.count
  end

  def test_status
    %w(scheduled account_transfer_notified invoice_issued).each do |status|
      res = @api.get_billings_list(status: [status])
      res.items.each do |item|
        assert_equal status, item.status
      end
    end
  end

  def test_unpaid
    res = @api.get_billings_list(unpaid: true)
    res.items.each do |item|
      assert_instance_of OpenapiClient::BillingUnpaid, item.unpaid
    end

    res = @api.get_billings_list(unpaid: false)
    res.items.each do |item|
      assert_nil item.unpaid
    end

    res = @api.get_billings_list(unpaid: "")
    res.items.each do |item|
      assert_nil item.unpaid
    end
  end

  def test_not_found
    requests = [
      'others', 'GY9N-EWNM',
      'canceled', 'NPMP-AMA6',
    ]
    requests.each_slice(2) do |mes, id|
      assert_raises(OpenapiClient::ApiError, mes) do
        begin
          @api.get_billing(id)
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
        @api.get_billing('AAAA-BBBB')
      rescue OpenapiClient::ApiError => e
        binding.pry
        assert_equal 400, e.code
        raise e
      end
    end
  end

  #def test_multiple_statuses
  #  statuses = %w(account_transfer_notified invoice_issued)
  #  puts statuses
  #  res = @api.get_billings_list(status: statuses)
  #  res.items.each do |item|
  #    assert_includes statuses, item.status
  #  end
  #end

  def test_invalid_requests
    requests = [
      'invalid limit', {limit: 0}, ArgumentError,
      'invalid limit', {limit: 201}, ArgumentError,
      'overlimit after', {after: '96RA-P4EN'}, OpenapiClient::ApiError,
      'set others id to after', {after: '9NR3-P9A6'}, OpenapiClient::ApiError,
      'overlimit before', {before: '6E4Y-RYPN'}, OpenapiClient::ApiError,
      'set others id to before', {before: '9NR3-P9A6'}, OpenapiClient::ApiError,
      'set others id to after', {after: '9NR3-P9A6'}, OpenapiClient::ApiError,
      'set canceled id to before', {before: 'NPMP-AMA6'}, OpenapiClient::ApiError,
      'set canceled id to after', {after: 'NPMP-AMA6'}, OpenapiClient::ApiError,
      'set invalid id to customer_id', {customer_id: 'AAAA-BBBB'}, OpenapiClient::ApiError,
      'set invalid status', {status: ['invalid']}, ArgumentError,
    ]
    requests.each_slice(3) do |mes, request, error_type|
      sleep(0.1)
      assert_raises(error_type, mes) do
        begin
          @api.get_billings_list(request)
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

