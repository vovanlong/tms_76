class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include UsersHelper

  private

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "please login"
      redirect_to login_url
    end
  end

  def verify
    unless   admin?(current_user) || trainner?(current_user)
      redirecto_to root_url
      flash[:notice] = "Can't acess"
    end
  end
end
