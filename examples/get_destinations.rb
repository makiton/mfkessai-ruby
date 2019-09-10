require_relative './client'
require 'pry'

def get_destinations(opts = {})
  api = OpenapiClient::DestinationApi.new
  defaults = {
    limit: 56
  }
  api.get_destinations_list(defaults.merge(opts))
end

if __FILE__ == $0
  begin
    res = get_destinations(
      # customer_id: '6MM7-M3M6',
      limit: nil
    )
    binding.pry
    puts res
  rescue => e
    puts e
  end
end

