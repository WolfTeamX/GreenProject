class RealizationCategoriesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @category = RealizationCategory.find(params[:format])
  end

  def update
    category = RealizationCategory.find(params[:id])
    category.name = params[:name]
    category.description = params[:description]
    unless params[:image].nil?
      category.image.attach(params[:image])
    end
    category.save

    redirect_to realizations_path
  end
end
