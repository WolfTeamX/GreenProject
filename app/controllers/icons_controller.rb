class IconsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @icon = Icon.find(params[:format])
  end

  def update
    @icon = Icon.find(params[:id])
    @icon.title = params[:title]
    @icon.description = params[:description]
    @icon.link = params[:link]
    unless params[:image].nil?
      @icon.image.attach(params[:image])
    end
    @icon.save
    redirect_to edit_icon_path(@icon.id)
  end
end
