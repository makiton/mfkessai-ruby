=begin
#MF KESSAI REST API

#MF KESSAI REST API

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Mfkessai::DestinationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DestinationApi' do
  before do
    # run before each test
    @instance = Mfkessai::DestinationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DestinationApi' do
    it 'should create an instance of DestinationApi' do
      expect(@instance).to be_instance_of(Mfkessai::DestinationApi)
    end
  end

  # unit tests for destination_create
  # create destination
  # 請求先を登録
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [MfkDestination]
  describe 'destination_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
