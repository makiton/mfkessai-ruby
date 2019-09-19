require 'minitest/autorun'
require_relative './client'
require 'securerandom'
require 'pry'

class TransactionTest < Minitest::Test
  def setup
    @api = OpenapiClient::TransactionApi.new
    sleep(0.1)
  end

  def test_get_transaction
    res = @api.get_transaction('6MGV-3YA6')
    {
      amount: 108,
      billing_id: "NPM7-PEA6",
      destination_id: "63YA-MVG6",
      date: Date.parse("2019-07-02"),
      due_date: Date.parse("2019-07-31"),
      id: "6MGV-3YA6",
      invoice_delivery_methods: ["email"],
      issue_date: Date.parse("2019-07-03"),
      number: "transaction-20190702-185550_1",
      object: "transaction",
      status: "canceled"
    }.each do |key, val|
      assert_equal val, res.send(key)
    end
  end

  def test_not_found
    requests = [
      'others', 'GY9N-EWNM',
    ]
    requests.each_slice(2) do |mes, id|
      assert_raises(OpenapiClient::ApiError, mes) do
        begin
          @api.get_transaction(id)
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
        @api.get_transaction('AAAA-BBBB')
      rescue OpenapiClient::ApiError => e
        assert_equal 400, e.code
        raise e
      end
    end
  end

  def test_delete_not_found
    requests = [
      'non existent', 'R97W-GYP4',
      'others', 'GY9N-EWNM',
    ]
    requests.each_slice(2) do |mes, id|
      assert_raises(OpenapiClient::ApiError, mes) do
        begin
          @api.cancel_transaction(id)
        rescue OpenapiClient::ApiError => e
          assert_equal 404, e.code, mes
          raise e
        end
      end
    end
  end

  def test_delete_non_cancelable_transactions
    requests = [
      'canceled', '6MGV-3YA6',
    ]
    requests.each_slice(2) do |mes, id|
      assert_raises(OpenapiClient::ApiError, mes) do
        begin
          @api.cancel_transaction(id)
        rescue OpenapiClient::ApiError => e
          assert_equal 409, e.code, mes
          raise e
        end
      end
    end
  end

  def test_delete_transaction
    transaction = @api.create_transaction(payload)
    res = @api.cancel_transaction(transaction.id)
    assert_equal 'canceled', res.status
  end

  def payload
    OpenapiClient::TransactionPayload.new(
      date: Date.today,
      issue_date: Date.today,
      due_date: Date.new(2019, 10, 31),
      amount: 108,
      amounts_per_tax_rate_type: [
        OpenapiClient::AmountPerTaxRateType.new(
          amount: 108,
          tax_rate_type: OpenapiClient::TaxRateType::NON_TAXABLE,
        )
      ],
      invoice_delivery_methods: ['email'],
      number: SecureRandom.uuid,
      destination_id: '63YA-MVG6',
      transaction_details: [
        {
          description: "hogehoge",
          amount: 108,
          quantity: 1,
          unit_price: 108,
          tax_included_type: 'included',
          tax_rate_type: OpenapiClient::TaxRateType::NON_TAXABLE,
        }
      ]
    )
  end
end

