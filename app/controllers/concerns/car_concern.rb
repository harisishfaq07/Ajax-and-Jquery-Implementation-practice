module CarConcern
   extend ActiveSupport::Concern 
included do
    before_action :authenticate_user!
end

  

   def all_cars
      Car.all
   end

   def somethingloud
    putc " HELLO "
   end

end