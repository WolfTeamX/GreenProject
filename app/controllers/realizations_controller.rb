class RealizationsController < ApplicationController
  before_action :authenticate_user!

  def add

  end

  def create
    params[:image].each do |image|
      realization = Realization.new
      realization.image.attach(image)
      realization.save
    end
    redirect_to realizations_path
  end

  def destroy_realization
    realization = Realization.find(params[:format])
    realization.destroy
    redirect_to realizations_path
  end
end
