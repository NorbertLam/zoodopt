class UsersController < ApplicationController

  def new
    if session[:user_id]
      redirect_to user_path(session[:user_id])
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    @user.email = user_params[:email].downcase
    @user.profile_image = "https://secure.gravatar.com/avatar/eed0bc78a6270ea8f2e11065e72dd50a?s=600&d=mm&r=g"
    flash[:error] = nil

    if @user.save
      if user_params[:password] == user_params[:password_confirmation]
        session[:user_id] = @user.id
        redirect_to user_path @user
      else
        flash[:error] = "Password's Dont Match"
      end
    else
      flash[:error] = "Stuff Doesnt line up"
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
      :first_name, :last_name, :age, :profile_image, :about)
  end

end
