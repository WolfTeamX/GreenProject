class SlidesController < ApplicationController
  before_action :authenticate_user!

  def add
    # method description
  end

  def create
    slide = Slide.new
    slide.title = params[:title]
    slide.content = params[:content]
    slide.image.attach(params[:image])
    slide.save
    redirect_to manage_slides_path
  end

  def edit
    @slide = Slide.find(params[:format])
  end

  def destroy
    slide = Slide.find(params[:format])
    slide.destroy
    redirect_to manage_slides_path
  end

  def manage
    @slides = Slide.paginate(page: params[:page], per_page: 1)
  end

  def update
    slide = params[:slide]
    sld = Slide.find(slide[:id])
    sld.title = slide[:title]
    sld.content = slide[:content]
    sld.image.attach(slide[:image]) unless slide[:image].nil?
    sld.save
    redirect_back fallback_location: root_path
  end
end
