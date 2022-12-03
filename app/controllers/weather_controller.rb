require 'net/http'
class WeatherController < ApplicationController
def index
   @w = params[:weather]
if @w.present?
   @lon = @w["lon"]
   @lat = @w["lat"]
end
   if @lon.present? and @lat.present?
obj = WeatherApi.new(@lon , @lat)
obj.get
   
   else
    @error = "Params not found"
   end
end
end