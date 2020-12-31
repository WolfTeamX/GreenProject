# Controls all pages on the website
class PagesController < ApplicationController

  def main_page
    @slides = Slide.all
    @offers = MainOffer.all
    @images = DesignatedCustomersImage.all
    @icons = Icon.all
  end

  def about_us
    @page = SubPage.find(1)
    @paragraphs = AboutUsParagraph.all
    @voivodeships = Voivodeship.all
  end

  def offer
    @page = SubPage.find(2)
    @offers = OfferParagraph.all
  end

  def realizations
    @categories = RealizationCategory.all
    @realizations = Realization.paginate(page: params[:page], per_page: 4).order('created_at DESC')
    @page = SubPage.find(3)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def certificates
    @certificates = Certificate.paginate(page: params[:page], per_page: 4).order('created_at DESC')
    @page = SubPage.find(5)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def sale
    # Do sth here...
  end

  def contact
    @page = SubPage.find(4)
    @contact = ContactInfo.first
  end

  def faq
    @page = FaqPage.find(params[:id])
  end

  def about_photovoltaics
    @page = FaqPage.find(1)
  end

  def about_heat_pump
    @page = FaqPage.find(2)
  end

  def about_air_conditioning
    @page = FaqPage.find(3)
  end

end
