class PetsController < ApplicationController
  before_action :authorized

  def index
    if logged_in?
      @pets = current_user.pets
    else
      redirect_to "/login"
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @user =current_user
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @user = current_user
    @pet.adopted = true
    @pet.update(pet_params)

    redirect_to @user
  end

  private

  def pet_params
    params.require(:pet).permit(:user_id)
  end
  
end
