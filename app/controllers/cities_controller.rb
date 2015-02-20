class CitiesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_city, only: [:show, :edit, :update, :destroy]


  def index
    @cities = City.paginate(:page => params[:page], :per_page => 5)
  end

  def show
  end

  def edit
  end

  def update
    if @city.update(city_params)
      redirect_to @city, notice: 'City was update succesfull.'
    else
      render :edit
    end
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
      if @city.save
        redirect_to @city, notice: 'City was succesfull create'
      else
        render :new
      end
  end

  def destroy
    @city.destroy
    redirect_to cities_path, notice:'City was succesfull destroyed.'
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:name, :short_name)
  end

end