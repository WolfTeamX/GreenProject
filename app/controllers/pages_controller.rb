# Controls all pages on the website
class PagesController < ApplicationController
  require 'mail'
  layout 'main_layout'

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
    @realizations = Realization.paginate(page: params[:page], per_page: 4).order('created_at DESC')
    @page = SubPage.find(3)

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
    if request.post?
      text = params[:name] + '<br />' + params[:phone] + '<br />' + params[:email] + '<br />' + params[:content]
      mail = Mail.new do
        from    'greenevolution@greenevolution.pl'
        to      'kanewers@gmail.com'
        subject 'Wiadomość z systemu GreenEvolution'
        body    text
      end
      mail.deliver
    end
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
