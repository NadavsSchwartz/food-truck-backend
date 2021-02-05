class ApplicationController < ActionController::API
  include ::ActionController::Cookies
  def current_account
    Account.find_by(id: session[:account_id])
  end

  def logged_in?
    !!current_account
  end
end
