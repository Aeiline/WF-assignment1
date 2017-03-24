class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(surname: params[:session][:surname])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or user
    else
      flash.now[:error] = "Invalid surname/password combination"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end