require 'spec_helper'
require 'rspec'

describe Weatherapi do 

  context 'requesting data from he current weather service works correctly' do 
    before(:all) do 
      @api_key = ENV['API_KEY']
      @current_weather_service = Weatherapi.new.current_weather_service
      @current_weather_service.current_weather_request_by_name('London', @api_key)
    end
    
    it 'should retrieve results as a hash' do 
      expect(@current_weather_service.retrieve_result).to be_kind_of(Hash)
    end

    it 'should retrieve coord as a hash' do 
      expect(@current_weather_service.retrieve_coord).to be_kind_of(Hash)
    end

    it 'should retrieve longitute from coordinate as a float' do 
      expect(@current_weather_service.retrieve_coord_lon).to be_kind_of(Float)
    end

    it 'should retrieve latitude from coordinate as a float' do 
      expect(@current_weather_service.retrieve_coord_lat).to be_kind_of(Float)
    end

    it 'should retrieve weather as an array' do 
      expect(@current_weather_service.retrieve_weather).to be_kind_of(Array)
    end

    it 'should retrieve elements in the weather array as a hash ' do 
      expect(@current_weather_service.retrieve_weather_elements).to be_kind_of(Hash)
    end

    it 'should retrieve id element in the weather array as an integer ' do 
      expect(@current_weather_service.retrieve_weather_elements_id).to be_kind_of(Integer)
    end

    it 'should retrieve main element in the weather array as an String ' do 
      expect(@current_weather_service.retrieve_weather_elements_main).to be_kind_of(String)
    end

    it 'should retrieve description element in the weather array as a String ' do 
      expect(@current_weather_service.retrieve_weather_elements_description).to be_kind_of(String)
    end

    it 'should retrieve icon element in the weather array as a String ' do 
      expect(@current_weather_service.retrieve_weather_elements_icon).to be_kind_of(String)
    end

    it 'should base description element in the weather array as a String ' do 
      expect(@current_weather_service.retrieve_base).to be_kind_of(String)
    end

    it 'should retrieve main as a hash' do 
      expect(@current_weather_service.retrieve_main).to be_kind_of(Hash)
    end

    it 'should retrieve temperature in the main hash as float ' do 
      expect(@current_weather_service.retrieve_main_temp).to be_kind_of(Float)
    end

    it 'should retrieve pressure in the main hash as integer ' do 
      expect(@current_weather_service.retrieve_main_pressure).to be_kind_of(Integer)
    end

    it 'should retrieve humidity in the main hash as integer ' do 
      expect(@current_weather_service.retrieve_main_humidity).to be_kind_of(Integer)
    end

    it 'should retrieve minimum temperature in the main hash float ' do 
      expect(@current_weather_service.retrieve_main_temp_min).to be_kind_of(Float)
    end

    it 'should retrieve maximum temperature in the main hash float ' do 
      expect(@current_weather_service.retrieve_main_temp_max).to be_kind_of(Float)
    end

    it 'should retrieve maximum temperature in the main hash float ' do 
      expect(@current_weather_service.retrieve_main_temp_max).to be_kind_of(Float)
    end

    it 'should retrieve visibility as integer ' do 
      expect(@current_weather_service.retrieve_visibility).to be_kind_of(Integer)
    end

    it 'should retrieve wind as hash ' do 
      expect(@current_weather_service.retrieve_wind).to be_kind_of(Hash)
    end

    it 'should retrieve speed from wind as hash as float' do 
      expect(@current_weather_service.retrieve_wind_speed).to be_kind_of(Float)
    end

    it 'should retrieve degree from wind as hash as integer ' do 
      expect(@current_weather_service.retrieve_wind_deg).to be_kind_of(Integer)
    end

    it 'should retrieve clouds as hash ' do 
      expect(@current_weather_service.retrieve_clouds).to be_kind_of(Hash)
    end

    it 'should retrieve all from clouds hash as integer ' do 
      expect(@current_weather_service.retrieve_clouds_all).to be_kind_of(Integer)
    end

    it 'should retrieve Time of data calculation as integer ' do 
      expect(@current_weather_service.retrieve_dt).to be_kind_of(Integer)
    end

    it 'should retrieve system as hash ' do 
      expect(@current_weather_service.retrieve_sys).to be_kind_of(Hash)
    end

    it 'should retrieve type from system hash as Integer ' do 
      expect(@current_weather_service.retrieve_sys_type).to be_kind_of(Integer)
    end

    it 'should retrieve id fromsystem hash as Integer ' do 
      expect(@current_weather_service.retrieve_sys_id).to be_kind_of(Integer)
    end

    it 'should retrieve message from system hash as float ' do 
      expect(@current_weather_service.retrieve_sys_message).to be_kind_of(Float)
    end

    it 'should retrieve country code from system hash as String ' do 
      expect(@current_weather_service.retrieve_sys_country).to be_kind_of(String)
    end

    it 'should retrieve sunrise time from system hash as integer ' do 
      expect(@current_weather_service.retrieve_sys_sunrise).to be_kind_of(Integer)
    end

    it 'should retrieve sunset time from system hash as integer ' do 
      expect(@current_weather_service.retrieve_sys_sunset).to be_kind_of(Integer)
    end

    it 'should retrieve id as integer ' do 
      expect(@current_weather_service.retrieve_id).to be_kind_of(Integer)
    end

    it 'should retrieve name as string ' do 
      expect(@current_weather_service.retrieve_name).to be_kind_of(String)
    end

    it 'should retrieve cod as Integer ' do 
      expect(@current_weather_service.retrieve_id).to be_kind_of(Integer)
    end

  end

end