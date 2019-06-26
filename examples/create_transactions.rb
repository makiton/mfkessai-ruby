require 'swagger_client'
require 'pry-byebug'
require 'time'
require 'securerandom'

SwaggerClient.configure do |conf|
  conf.host = ENV['MFK_API_HOST']
  conf.api_key['apikey'] = ENV['MFK_API_KEY']
  conf.verify_ssl = false
  conf.verify_ssl_host = false
  conf.debugging = true
end

def create_transaction
  payload = SwaggerClient::TransactionPayload.new(
    date: Date.today.to_time.iso8601,
    issue_date: Date.today.to_time.iso8601,
    due_date: Date.new(2019, 7, 31).to_time.iso8601,
    amount: 108,
    user_defined_id: SecureRandom.uuid,
    email_flag: true,
    destination: {
      address1: "千代田区1-2-3",
      address2: "サンプルビル3F",
      cc_emails: [
        "another.tanto1@example.jp",
      ],
      customer: {
        office_name: "請求書顧客2019060701",
        user_defined_id: "customer_2019060701"
      },
      department: "経理部",
      email: "suzuki.shintaro+featurecustomer@mfkessai.co.jp",
      name: "請求先氏名",
      name_kana: "セイキュウサキ シメイ",
      prefecture: "東京都",
      tel: "03-1234-5678",
      title: "",
      zip_code: "111-1111"
    },
    transaction_details: [
      {
        description: "hogehoge",
        amount: 108,
        quantity: 1,
        unit_price: 108,
      }
    ]
  )

  if block_given?
    yield payload
  end

  api = SwaggerClient::TransactionApi.new

  begin
    res = api.transaction_create(payload)
  rescue => e
    puts e.full_message
  end
  return res
end

n = (ARGV[0] || 1).to_i

n.times do
  res = create_transaction do |payload|
  end
  puts res.to_json
end

