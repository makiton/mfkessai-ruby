require 'swagger_client'
require 'pry-byebug'
require 'time'
require 'securerandom'

SwaggerClient.configure do |conf|
  conf.host = ENV['MFK_API_HOST']
  conf.api_key['apikey'] = ENV['MFK_API_KEY']
  conf.verify_ssl = false
  conf.verify_ssl_host = false
  conf.debugging = !ENV['MFK_API_DEBUG'].nil?
end

def create_destination
  payload = SwaggerClient::DestinationPayload.new(
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
  )

  if block_given?
    yield payload
  end

  api = SwaggerClient::DestinationApi.new

  begin
    res = api.destination_create(payload)
  rescue => e
    puts e.full_message
  end
  return res
end

def create_examination(destination_id)
  payload = SwaggerClient::ExaminationPayload.new(
    due_date: Date.new(2019, 7, 31).to_time.iso8601,
    amount: 108,
    destination_id: destination_id,
    examination_details: [
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

  api = SwaggerClient::ExaminationApi.new

  begin
    res = api.examination_create(payload)
  rescue => e
    puts e.full_message
  end
  return res
end

def create_examination_transaction(id)
  payload = SwaggerClient::CreateTransactionByExaminationPayload.new(
    date: Date.today.to_time.iso8601,
    issue_date: (Date.today + 1).to_time.iso8601,
    email_flag: true,
    posting_flag: false,
    user_defined_id: SecureRandom.uuid
  )

  if block_given?
    yield payload
  end

  api = SwaggerClient::ExaminationApi.new

  begin
    res = api.examination_create_transaction(id, payload)
  rescue => e
    puts e.full_message
  end
  return res
end

destination = create_destination
binding.pry
examination = create_examination(destination.id)
create_examination_transaction(examination.id)

