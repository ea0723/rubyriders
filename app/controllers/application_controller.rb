class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_index
    @user = User.all
  end

  def company_index
    @company = Company.all
  end

  def invest_index
    @investment = Investment.all
  end

end
