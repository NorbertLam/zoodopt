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
  end

  
end
