class OfferParagraphsController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def edit
    @offer = OfferParagraph.find(params[:format])
  end

  def update
    offer = params[:offer_paragraph]
    @offer = OfferParagraph.find(offer[:id])
    @offer.header = offer[:header]
    @offer.title = offer[:title]
    @offer.content = offer[:content]
    unless offer[:image].nil?
      @offer.image.attach(offer[:image])
    end
    @offer.save

    redirect_to offer_admin_path
  end
end
