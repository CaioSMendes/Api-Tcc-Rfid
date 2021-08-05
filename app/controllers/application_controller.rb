class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        #before_action :authenticate_user! #faz autenticacao login na api
end
