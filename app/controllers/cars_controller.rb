class CarsController < ApplicationController
  def index
    @cars = Car.all
    # render json: cars
  end

  def show
    @car = Car.find(params[:id])
    # render json: car
  end

  def create
    @car = Car.create!(car_params)
    # render json: car
    redirect_to cars_path
  end

  def update
    @car = Car.find(params[:id])
    @car.update!(car_params)
    # render json: car
    redirect_to actors_path
  end

  def destroy 
    @car = Car.find(params[:id])
    @car.destroy!
    # render plain: "car ELIMINATED"
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:manufacturer, :model, :year )
  end

end
