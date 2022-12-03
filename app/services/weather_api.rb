class WeatherApi
    def initialize(lon , lat)
        @lon = lon
        @lat = lat
        @url = "https://api.openweathermap.org/data/2.5/weather?lat=#{@lat}&lon=#{@lon}&appid=0023401ec97a392619e841c35220143c"
    end

    def get
    @uri = URI(@url)
    @res = Net::HTTP.get_response(@uri)
    @data = @res.body
    end
end