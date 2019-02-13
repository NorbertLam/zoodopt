class ApplicationController < ActionController::Base

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def home
    @latest = Pet.all.select { |pet| pet.adopted == false}.last(6)
    render :home
  end

end
