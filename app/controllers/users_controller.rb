class UsersController < ApplicationController

  before_action :authorize, only: [:show]

  def index
  end

  def show
    # display the user profile, with a list of all of that user's post titles
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @user = current_user
    session[:user_id] = nil
    if @user.destroy
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
