class FootersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @footer = Footer.find(params[:format])
  end

  def update
    footer = Footer.find(1)
    footer.description = params[:footer][:description]
    footer.image.attach(params[:footer][:image]) unless params[:footer][:image].nil?
    footer.save
    redirect_back fallback_location: root_path
  end
end
