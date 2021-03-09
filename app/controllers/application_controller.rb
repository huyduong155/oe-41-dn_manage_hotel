class ApplicationController < ActionController::Base
  include SessionHelper
  before_action :set_locale

  def log_in user
    session[:user_id] = user.id
  end

  private

  def set_locale
    locale = params[:locale].to_s.strip.to_sym
    return I18n.locale = locale if I18n.available_locales.include?(locale)

    I18n.locale = I18n.default_locale
  end
end
