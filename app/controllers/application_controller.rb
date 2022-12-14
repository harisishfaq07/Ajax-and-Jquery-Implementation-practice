class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        dash_path(current_user) 
    end
    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:f_name, :l_name , :email, :password)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:f_name, :l_name , :email, :password, :current_password)}
         end

   
end
