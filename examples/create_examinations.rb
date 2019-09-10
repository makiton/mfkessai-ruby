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

def create_examination
  payload = SwaggerClient::ExaminationPayload.new(
    due_date: Date.new(2019, 7, 31).to_time.iso8601,
    amount: 108,
    destination_id: "AG76-4ENM",
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

n = (ARGV[0] || 1).to_i

n.times do
  res = create_examination
  puts res.to_json
end


