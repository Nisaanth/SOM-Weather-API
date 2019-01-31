require 'httparty'
require 'json'

class FiveDayWeatherForecastService
  include HTTParty

  base_uri 'https://api.openweathermap.org'

  def five_day_weather_request_by_name(city, api_key)
    @current_weather_data = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city}&APPID=#{api_key}").body)
  end

  def five_day_weather_request_by_id(id, api_key)
    @current_weather_data = JSON.parse(self.class.get("/data/2.5/forecast?id=#{id}&APPID=#{api_key}").body)
  end
end

currentWeather = FiveDayWeatherForecastService.new

p currentWeather.five_day_weather_request_by_name('London', 'f6f21117452fa8a220b69f00142c537c')