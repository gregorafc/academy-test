class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_user, only: [:show, :add_city, :update]

  def index
    @users = User.all
  end

  def show
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def add_city
    @cities = City.all
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'City was picked successfully'
    else
      render :add_city
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:city_id)
  end

end
