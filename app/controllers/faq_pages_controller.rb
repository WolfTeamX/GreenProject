class FaqPagesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @page = FaqPage.find(params[:format])
  end

  def update
    @page = FaqPage.find(params[:id])
    @page.title = params[:title]
    unless params[:image].nil?
      @page.image.attach(params[:image])
    end
    @page.save
    redirect_back fallback_location: root_path
  end
end
