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

# Unit tests for OpenapiClient::InlineResponse2004
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InlineResponse2004' do
  before do
    # run before each test
    @instance = OpenapiClient::InlineResponse2004.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2004' do
    it 'should create an instance of InlineResponse2004' do
      expect(@instance).to be_instance_of(OpenapiClient::InlineResponse2004)
    end
  end
  describe 'test attribute "items"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "object"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["list"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.object = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "pagination"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
