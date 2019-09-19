require 'openapi_client'

OpenapiClient.configure do |config|
  config.host = ENV['MFK_API_HOST']
  config.api_key['apikey'] = ENV['MFK_API_KEY']
  config.verify_ssl = false
  config.verify_ssl_host = false
  # config.debugging = true
end

