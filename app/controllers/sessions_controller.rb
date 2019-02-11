class SessionsController < ApplicationController

  def new
  end

  def create
    flash[:error] = nil
    user = User.find_by(email: params[:email])

    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = "Failed to login"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to "/login"
  end

end