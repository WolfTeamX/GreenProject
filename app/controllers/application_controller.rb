# Main application controller
class ApplicationController < ActionController::Base
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

  def display_error(exception)
    if user_signed_in?
      redirect_to root_path, alert: I18n.t('unexpected_error', error: exception)
    else
      redirect_to root_path
    end
  end
end
