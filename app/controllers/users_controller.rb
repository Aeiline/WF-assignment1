class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            log_in(user)
          flash[:success] = "Welcome to the Sample App!"
          redirect_to @user
        else
          render 'new'
        end
    end

    
    private

    def user_params
        params.require(:user).permit(:name, :age, :surname, :email, :home_address,
                                        :password, :password_confirmation)
    end
    
    def logged_in_user
        unless logged_in?
            flash[:danger] = "Please log in."
            redirect_to login_url
        end
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless @user == current_user
    end
end