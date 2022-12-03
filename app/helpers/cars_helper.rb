module CarsHelper
   
      def downcase(name)
        name.downcase
      end
      
      def formate(date)
        date.strftime("%A , %b %d")
      end
      def create
        @car = Car.new(car_params)
        respond_to do |format|
          if @car.save
            format.html { redirect_to car_url(@car), notice: "Car was successfully created." }
            format.json { render :show, status: :created, location: @car }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @car.errors, status: :unprocessable_entity }
          end
        end
      end
    
end
