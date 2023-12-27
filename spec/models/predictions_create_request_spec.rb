=begin
#Replicate HTTP API

#A web service for running Replicate models

The version of the OpenAPI document: 1.0.0-a1
Contact: team@replicate.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Replicate::PredictionsCreateRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Replicate::PredictionsCreateRequest do
  let(:instance) { Replicate::PredictionsCreateRequest.new }

  describe 'test an instance of PredictionsCreateRequest' do
    it 'should create an instance of PredictionsCreateRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Replicate::PredictionsCreateRequest)
    end
  end

  describe 'test attribute "input"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "stream"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "version"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "webhook"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "webhook_events_filter"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["start", "output", "logs", "completed"])
      # validator.allowable_values.each do |value|
      #   expect { instance.webhook_events_filter = value }.not_to raise_error
      # end
    end
  end

end
