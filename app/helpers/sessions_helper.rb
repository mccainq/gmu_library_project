module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end
  # Checks session[user_id] and if set if it corresponds to a user
  #  Returns the current logged-in user (if exist)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

  # Remove user_id from session and set @current_user to nil
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
