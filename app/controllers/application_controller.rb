# Main application controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
  rescue_from StandardError, with: :display_error

  layout 'main_layout'

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def is_flashing_format?
    false
  end

  def default_url_options
    if ENV.fetch('FORCE_SSL', false)
      { host: 'green-evolution.pl', protocol: 'https' }
    else
      { host: 'localhost:3000', protocol: 'http' }
    end
  end

  def display_error(exception)
    if user_signed_in?
      redirect_to root_path, alert: I18n.t('unexpected_error', error: exception)
    else
      redirect_to root_path
    end
  end
end
