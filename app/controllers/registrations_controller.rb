class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    logger.debug params
    @user = User.new(user_params)

    if @user.save
      auto_login(@user)
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
