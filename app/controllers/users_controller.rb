class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.username.downcase
    if @user.save
      flash[:notice] = "You have successfully created an account and logged in."
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def user_params
    params.require(:user).permit(:username, :password)
  end

  

end