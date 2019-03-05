require 'rspec'
require 'json'
require 'httparty'
require_relative '../lib/weatherapi'
require 'dotenv'
Dotenv.load('.env')

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end