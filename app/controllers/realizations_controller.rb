class RealizationsController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def add

  end

  def create
    params[:images].each do |image|
      realization = Realization.new
      realization.image.attach(image)
      realization.save
    end
    redirect_to realizations_admin_path
  end

  def destroy_realization
    realization = Realization.find(params[:format])
    realization.destroy
    redirect_to realizations_admin_path
  end
end
