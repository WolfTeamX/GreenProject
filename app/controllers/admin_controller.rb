# frozen_string_literal: true

class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def admin_index
    # something
  end

  def settings
    if request.post?
      exists = Setting.exists? id: 1
      setting = exists ? Setting.find(1) : Setting.new
      setting.short_description = params[:short_description]
      setting.address = params[:contact]
      setting.save
    end
    @current_setting = (Setting.exists? id: 1) ? Setting.find(1) : nil
  end

  def realizations
    if request.post?
      params[:images].each do |image|
        realization = Realization.new
        realization.image.attach(image)
        realization.save
      end
    end
  end
end
