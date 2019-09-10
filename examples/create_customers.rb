require_relative './client'
require 'pry'
require 'securerandom'

def create_customer
  api = OpenapiClient::CustomerApi.new
  payload = OpenapiClient::CustomerPayload.new(
    name: '株式会社テスト',
    number: 'customer_20190910_' + SecureRandom.uuid,
    destination: destination,
    customer_examination: customer_examination,
  )
  api.create_customer(payload)
end

def destination
  OpenapiClient::CustomerPayloadDestination.new(
    address1: '東京都千代田区1-2-3',
    address2: 'サンプルビル3F',
    cc_emails: %w(another.tanto1@example.jp another.tanto2@example.jp a@b c@d),
    department: '経理部',
    email: 'kessai.tanto@example.jp',
    name: '担当　太郎',
    name_kana: 'タントウ　タロウ',
    tel: '03-1234-5678',
    title: '部長',
    zip_code: '111-1111'
  )
end

def customer_examination
  OpenapiClient::CustomerPayloadCustomerExamination.new(
    amount: 10_000_000,
    business_description: 'クラウド型企業間決済サービス',
    business_type: 'corporate',
    corporate_number: '1234567890123',
    remark: '一部上場企業です。',
    representative_name: '代表太郎',
    website: 'https://mfkessai.co.jp'
  )
end

if __FILE__ == $0
  begin
    res = create_customer
    puts res
  rescue => e
    puts e
  end
end
