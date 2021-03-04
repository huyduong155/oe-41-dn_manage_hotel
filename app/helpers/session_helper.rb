# frozen_string_literal: true

module SessionHelper
  def log_in user
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def check_admin
    if logged_in?
      @current_user = current_user
      redirect_to root_path unless @current_user.role == "admin"
    else
      flash[:warning] = t "please_log_in"
      redirect_to login_path
    end
  end

  def admin?
    return true if current_user.role == Settings.role_admin
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def format_date date
    date.strftime("%d/%m/%Y")
  end
end
