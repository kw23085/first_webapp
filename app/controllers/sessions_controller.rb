class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      # create a cookie with the user id in it
      session[:user_id] = @user.id
      # show a message for users when logged in
      flash[:success] = "Welcome back, #{@user.name}!"
      redirect_to user_path(@user)
    else
      # show a message for users when login info is incorrect
      flash[:danger] = "Email or username is incorrect."
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
