require 'httparty'
require 'json'
# require 'dotenv'
# Dotenv.load('../../.env')


class CurrentWeatherService
  include HTTParty

  base_uri 'https://api.openweathermap.org'

  def current_weather_request_by_name(city, api_key)
    # api_key = ENV['API_KEY']
    @current_weather_data = JSON.parse(self.class.get("/data/2.5/weather?q=#{city}&APPID=#{api_key}").body)
  end

  def current_weather_request_by_id(id)
    @current_weather_data = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}&APPID=#{api_key}").body)
  end
end

currentWeather = CurrentWeatherService.new

p currentWeather.current_weather_request_by_name('London','f6f21117452fa8a220b69f00142c537c')
# p weather.current_weather_request_by_id('2643743', 'f6f21117452fa8a220b69f00142c537c')