class MainOffersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @offer = MainOffer.find(params[:format])
  end

  def update
    @offer = MainOffer.find(params[:id])
    @offer.title = params[:title]
    @offer.description = params[:description]
    unless params[:image].nil?
      @offer.image.attach(params[:image])
    end
    @offer.save
    redirect_back fallback_location: root_path
  end
end
