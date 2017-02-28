# WEATHER this is our api call
class Weather

  def initialize(zip)
    @zip = zip
  end

  def get_humidity
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=' + @zip + ',us&appid=f6fa339accfe01cb0e8fe9b9627c48a2')
    response["main"]["humidity"]
  end
end
