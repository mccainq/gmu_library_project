class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to books_path
    else
      redirect_to login_path, alert: "Login Failed"
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
