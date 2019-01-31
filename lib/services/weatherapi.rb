require_relative 'services/current_weather'
require_relative 'services/five_day_weather'

class Weatherapi
  
  def current_weather_service
    CurrentWeatherService.new
  end

  def five_day_weather
    FiveDayWeatherForecastService.new
  end
end

weather_api = Weatherapi.new