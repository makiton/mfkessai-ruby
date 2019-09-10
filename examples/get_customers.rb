require_relative './client'
require 'pry'

def get_customers(opts = {})
  api = OpenapiClient::CustomerApi.new
  defaults = {
    payment_methods: ['bank_transfer'],
  }
  api.get_customers_list(defaults.merge(opts))
end

def get_customer(id)
  api = OpenapiClient::CustomerApi.new
  api.get_customer(id)
end

if __FILE__ == $0
  begin
    res =  get_customers
    puts res
    res =  get_customer("AAAA-BBBB")
    puts res
  rescue => e
    puts e
  end
end

