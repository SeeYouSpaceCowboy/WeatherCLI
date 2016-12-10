class Weather

  def puts_all_city
    WeatherAdapter.query_city("New York City").weather_data.each do |key, value|
      puts "#{key} : #{value}"
    end
  end
end
