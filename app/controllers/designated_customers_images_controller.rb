class DesignatedCustomersImagesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @image = DesignatedCustomersImage.find(params[:format])
  end

  def update
    @image = DesignatedCustomersImage.find(params[:id])
    @image.text = params[:text]
    unless params[:image].nil?
      @image.image.attach(params[:image])
    end
    @image.save
    redirect_back fallback_location: root_path
  end
end
