class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'
  def admin_index
    # something
  end
end
