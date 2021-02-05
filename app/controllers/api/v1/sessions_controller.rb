class Api::V1::SessionsController < ApplicationController
  def create
    @account = Account.find_by(email: params[:session][:email])

    if @account && @account.authenticate(params[:session][:password])
      session[:account_id] = @account.id
      render json: {
        account: @account,
        loggedIn: true
      }
    else
      render json: {
        error: 'Invalid Credentials'
      }
    end
  end

  def get_current_account
    if logged_in?
      render json: {
        account: current_account,
        loggedIn: true
      }
    else
      render json: {
        error: 'No one logged in'
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: 'Successsfully logged out'
    }, status: :ok
  end
end
