class Api::V1::AccountsController < ApplicationController
  def index
    @accounts = Account.all
    if @accounts
      render json: @accounts
    else
      render json: {
        status: 500,
        errors: ['no users found']
      }
    end
  end

  def create
    @account = Account.create(account_params)
    if @account.save
      session[:account_id] = @account.id
      render json: @account
    else
      render json: { status: 500, error: @account.errors.full_messages }
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
    params.require(:account).permit(:name, :email, :password)
  end
end
