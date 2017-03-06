class UserController < ApplicationController
    def new
        @user = User.create(params[:user])
    end
    def show
        @user = User.first
    end
end