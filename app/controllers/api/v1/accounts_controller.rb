class Api::V1::AccountsController < ApplicationController
  def index
    @accounts = Account.all
    render json: @accounts
  end

  def create
    @account = Account.create(account_params)
    if @account.save
      render json: { account: @account, message: 'Account was created Successfuly' }
    else
      render json: { error: `Error creating a new Food Truck`, error2: @account.error }
    end
  end

  def show
    @account = Account.find(params[:id])
    render json: @account
  end

  def delete
    @account = Account.find(params[:id])
    @account.destory
    render json: { message: 'account was deleted' }
  end

  def account_params
    params.require(:data).permit(:name, :email, :password)
  end
end
