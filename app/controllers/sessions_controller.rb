class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    logger.debug params
    email = user_params[:email]
    password = user_params[:password]
    if login(email, password)
      redirect_to users_path, notice: "successfully logged in."
    else
      @user = User.new(email: email)
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
