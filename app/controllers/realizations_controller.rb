class RealizationsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def add
    @categories = RealizationCategory.all.map { |category| [category.name, category.id] }
  end

  def show
    @category = RealizationCategory.find(params[:id])
    @realizations = @category.realizations.paginate(page: params[:page], per_page: 4).order('created_at DESC')

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    params[:image].each do |image|
      realization = Realization.new
      realization.realization_category = RealizationCategory.find(params[:category])
      realization.image.attach(image)
      realization.save
    end

    redirect_to realizations_path
  end

  def edit
    @realization = Realization.find(params[:format])
  end

  def update
    realization = Realization.find(params[:id])
    realization.description = params[:description]
    unless params[:image].nil?
      realization.image.attach(params[:image])
    end
    realization.save
    redirect_back fallback_location: root_path
  end

  def destroy_realization
    realization = Realization.find(params[:format])
    realization.destroy
    redirect_to realizations_path
  end
end
