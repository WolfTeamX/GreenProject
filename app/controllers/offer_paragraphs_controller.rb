class OfferParagraphsController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def edit
    @paragraph = OfferParagraph.find(params[:format])
  end
end
