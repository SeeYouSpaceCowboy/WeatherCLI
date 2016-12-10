class WeatherAdapter
  URL = "http://api.openweathermap.org/data/2.5/weather?q="
  API_KEY = "&APPID=c0ba3d138b62d616c8512d45cb84fc92"

  attr_reader :weather_data

  def self.query_city(city)
    self.new
    query = parse(city)
    @weather_data = JSON.parse(RestClient.get("#{URL}#{query}&units=imperial#{API_KEY}"))
  end

  def parse(query)
    query = query.gsub(" ", "+")
  end
end
