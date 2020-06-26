# frozen_string_literal: true

class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'
  def admin_index
    # something
  end

  def settings
    # something
  end
end
