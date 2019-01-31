require 'rspec'
require 'json'
require 'httparty'
require_relative '../lib/weatherapi'
require 'dotenv'
Dotenv.load('.env')


# require_relative '../lib/randomGenerator/Generator'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end