class Api::V1::FoodtrucksController < ApplicationController
  before_action :set_account

  def index
    if @account
      @foodtrucks = @account.food_trucks
      render json: @foodtrucks
    else
      @foodtrucks = FoodTruck.all
      render json: @foodtrucks
    end
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
    binding.pry
    @foodtruck = @account.food_trucks.find(params[:id])
    @foodtruck.destory
    render json: { message: 'FoodTruck was deleted' }
  end

  def update
    @foodtruck = FoodTruck.find_by(id: params[:id])
    if @foodtruck.update(foodtruck_params)
      render json: @foodtruck
    else
      error_resp = {
        error: @recipe.errors.full_messages.to_sentence,
        invalid_account: "You don't have access to this recipe!"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private

  def set_account
    @account = Account.find(params[:account_id] || session[:account_id])
  end

  def foodtruck_params
    params.require(:food_truck).permit(:name, :location, :category, :hours, :score, :description, :account_id)
  end
end
