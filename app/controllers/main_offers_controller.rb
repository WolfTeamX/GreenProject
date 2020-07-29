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
    redirect_to(admin_index_path)
  end
end
