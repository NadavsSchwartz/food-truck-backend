class Api::V1::FoodTrucksController < ApplicationController

  before_action :set_account

  def index
    @foodtrucks = @account.food_trucks
    render json: @foodtrucks
  end

  def create
    @foodtruck = @account.food_trucks.new(foodtruck_params)
    if @foodtruck.save
      render json: @foodtruck
    else
      render json: { error: `Error creating a new Food Truck`, error2: @foodtruck.error }
    end
  end

  def show
    @foodtruck = @account.food_trucks.find(params[:id])
    render json: @foodtruck
  end

  def delete
    @foodtruck = @account.food_trucks.find(params[:id])
    @foodtruck.destory
    render json: {message: 'FoodTruck was deleted'}
  end

  private 

  def set_account
    @account = Account.find(params[:account_id])
  end
  def foodtruck_params
    params.require(:food_truck).permit(:name, :location, :category, :hours, :description, :score, :account_id)
  end
end
