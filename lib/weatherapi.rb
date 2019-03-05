require_relative './services/current_weather_service'
require_relative './services/five_day_weather_service'

class Weatherapi
  
  def current_weather_service
    CurrentWeatherService.new
  end

  def five_day_weather_service
    FiveDayWeatherForecastService.new
  end
end