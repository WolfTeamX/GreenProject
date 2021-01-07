# Main application controller
class ApplicationController < ActionController::Base
  layout 'main_layout'

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def display_error
    redirect_to root_path, alert: "Wystąpił nieoczekiwany błąd."
  end
end
