class SlidesController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def create
    slide = Slide.new
    slide.title = params[:title]
    slide.content = params[:content]
    slide.image.attach(params[:image])
    slide.save
    redirect_to admin_index_path
  end

  def destroy
    slide = Slide.find(params[:format])
    slide.destroy
    redirect_to admin_index_path
  end

  def manage
    @slides = Slide.paginate(page: params[:page], per_page: 1)
  end

  def update
    # something
  end
end
