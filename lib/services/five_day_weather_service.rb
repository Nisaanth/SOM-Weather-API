require 'httparty'
require 'json'

class FiveDayWeatherForecastService
  include HTTParty

  base_uri 'https://api.openweathermap.org'

  def five_day_weather_request_by_name(city, api_key)
    @five_day_weather_data = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city}&APPID=#{api_key}").body)
  end

  def five_day_weather_request_by_id(id, api_key)
    @five_day_weather_data = JSON.parse(self.class.get("/data/2.5/forecast?id=#{id}&APPID=#{api_key}").body)
  end

  def retrieve_cod
    @five_day_weather_data['cod']
  end

  def retrieve_message
    @five_day_weather_data['message']
  end

  def retrieve_cnt
    @five_day_weather_data['cnt']
  end

  def retrieve_list
    @five_day_weather_data['list']
  end

  def retrieve_all_dt
    dt = []
    retrieve_list.each do |result|
      dt << result['dt']
    end
    dt
  end

  def retrieve_all_main
    main = []
    retrieve_list.each do |result|
      main << result['main']
    end
    main
  end

  def retrieve_all_main_temp
    temp = []
    retrieve_list.each do |result|
      temp << result['main']['temp']
    end
    temp
  end

  def retrieve_all_main_temp_min
    temp_min = []
    retrieve_list.each do |result|
      temp_min << result['main']['temp_min']
    end
    temp_min
  end

  def retrieve_all_main_temp_max
    temp_max = []
    retrieve_list.each do |result|
      temp_max << result['main']['temp_max']
    end
    temp_max
  end

  def retrieve_all_main_pressure
    pressure = []
    retrieve_list.each do |result|
      pressure << result['main']['pressure']
    end
    pressure
  end

  def retrieve_all_main_sea_level
    sea_level = []
    retrieve_list.each do |result|
      sea_level << result['main']['sea_level']
    end
    sea_level
  end

  def retrieve_all_main_grnd_level
    grnd_level = []
    retrieve_list.each do |result|
      grnd_level << result['main']['grnd_level']
    end
    grnd_level
  end

  def retrieve_all_main_humidity
    humidity = []
    retrieve_list.each do |result|
      humidity << result['main']['humidity']
    end
    humidity
  end

  def retrieve_all_main_temp_kf
    temp_kf = []
    retrieve_list.each do |result|
      temp_kf << result['main']['temp_kf']
    end
    temp_kf
  end

  def retrieve_all_weather
    weather = []
    retrieve_list.each do |result|
      weather << result['weather']
    end
    weather
  end

  def retrieve_all_weather_id
    weather_id = []
    retrieve_list.each do |result|
      weather_id << result['weather'][0]['id']
    end
    weather_id
  end

  def retrieve_all_weather_main
    weather_main = []
    retrieve_list.each do |result|
      weather_main << result['weather'][0]['main']
    end
    weather_main
  end

  def retrieve_all_weather_description
    weather_description = []
    retrieve_list.each do |result|
      weather_description << result['weather'][0]['description']
    end
    weather_description
  end

  def retrieve_all_weather_icon
    weather_icon = []
    retrieve_list.each do |result|
      weather_icon << result['weather'][0]['icon']
    end
    weather_icon
  end


end

currentWeather = FiveDayWeatherForecastService.new

currentWeather.five_day_weather_request_by_name('London', 'f6f21117452fa8a220b69f00142c537c')

p currentWeather.retrieve_all_weather_icon 