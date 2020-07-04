class SlidesController < ApplicationController

  def create
    slide = Slide.new
    slide.title = params[:title]
    slide.content = params[:content]
    slide.image.attach(params[:image])
    slide.save
    redirect_back(fallback_location: admin_index_path)
  end

  def destroy
    slide = Slide.find(params[:format])
    slide.destroy
    redirect_to(admin_index_path)
  end

  def update
    # something
  end
end
