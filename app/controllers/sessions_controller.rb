class SessionsController < ApplicationController
  include SessionsHelper

  def new
    if logged_in?
      redirect_to reservations_url
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to users_url
    else
      flash[:error] = "Invalid email or password."
      redirect_to login_url
    end
  end

  def destroy
    log_out
    flash[:notice] = "Logout successfully."
    redirect_to login_url
  end
end
