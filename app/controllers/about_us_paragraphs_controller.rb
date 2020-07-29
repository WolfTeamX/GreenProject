class AboutUsParagraphsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @paragraph = AboutUsParagraph.find(params[:format])
  end

  def update
    @paragraph = AboutUsParagraph.find(params[:id])
    @paragraph.title = params[:title]
    @paragraph.content = params[:content]
    unless params[:image].nil?
      @paragraph.image.attach(params[:image])
    end
    redirect_to about_us_admin_path
  end
end
