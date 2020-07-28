class IconsController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

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
    redirect_to(admin_index_path)
  end
end
