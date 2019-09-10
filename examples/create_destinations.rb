require_relative './client'
require 'pry'

def create_destination
  api = OpenapiClient::DestinationApi.new
  api.create_destination(destination)
end

def destination
  OpenapiClient::DestinationPayload.new(
    address1: '東京都千代田区1-2-3',
    # address2: 'サンプルビル3F',
    # cc_emails: %w(another.tanto1@example.jp another.tanto2@example.jp),
    customer_id: 'AAAA-BBBB',
    # department: '経理部',
    email: 'kessai.tanto@example.jp',
    name: '担当　太郎',
    name_kana: 'タントウ　タロウ',
    tel: '03-1234-5678',
    # title: '部長',
    zip_code: '111-1111'
  )
end

if __FILE__ == $0
  begin
    res = create_destination
    binding.pry
    puts res
  rescue => e
    puts e
  end
end


