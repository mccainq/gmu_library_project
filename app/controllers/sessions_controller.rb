class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    user = User.find_by(user_id: params[:session][:user_id].downcase)
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
