class ApplicationController < ActionController::API
        before_action :configure_permitted_parameters, if: :devise_controller?
        include DeviseTokenAuth::Concerns::SetUserByToken
        #before_action :authenticate_user! #faz autenticacao login na api
        
        protected

        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys:[:companyName, :name, :nickname]) 
        end
end
