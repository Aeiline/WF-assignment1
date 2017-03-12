class SessionsController < ApplicationController
    
    def new
    end
    
    def create
        user = User.find_by(surname: params[:session][:surname])
        if user && user.authenticate(params[:session][:password])
          redirect_to user
        else
          redirect_to access_denied_path
        end
    end
    
end