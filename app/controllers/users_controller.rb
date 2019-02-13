class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
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
    @user = current_user
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
      :first_name, :last_name, :age)
  end

end
