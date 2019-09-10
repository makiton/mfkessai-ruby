=begin
#MF KESSAI API v2

#MF KESSAI REST API

The version of the OpenAPI document: 0.2.0
Contact: support@mfkessai.co.jp
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::AmountPerTaxRateType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AmountPerTaxRateType' do
  before do
    # run before each test
    @instance = OpenapiClient::AmountPerTaxRateType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AmountPerTaxRateType' do
    it 'should create an instance of AmountPerTaxRateType' do
      expect(@instance).to be_instance_of(OpenapiClient::AmountPerTaxRateType)
    end
  end
  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tax_rate_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
