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
      log_in @user
      flash[:success] = "welcome to the sample app" 
      redirect_to @user
      # redirect_to(user_path(@user))
      # redirect_to(user_path(@user.id))
      # redirect_to(user_path(1))
      #             =>/users/1
      
    else
      render 'new'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
