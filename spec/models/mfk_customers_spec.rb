=begin
#MF KESSAI REST API

#MF KESSAI REST API

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Mfkessai::MfkCustomers
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MfkCustomers' do
  before do
    # run before each test
    @instance = Mfkessai::MfkCustomers.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MfkCustomers' do
    it 'should create an instance of MfkCustomers' do
      expect(@instance).to be_instance_of(Mfkessai::MfkCustomers)
    end
  end
  describe 'test attribute "customers"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "pagination"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

