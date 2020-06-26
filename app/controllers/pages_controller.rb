# Controls all pages on the website
class PagesController < ApplicationController
  require 'mail'
  layout 'main_layout'

  def main_page
    # Do sth here...
  end

  def about_us
    # Do sth here...
  end

  def offer
    # Do sth here...
  end

  def realizations
    # Do sth here...
  end

  def sale
    # Do sth here...
  end

  def contact
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

  def about_photovoltaics
    # Do sth here...
  end

  def about_heat_pump
    # Do sth here...
  end

  def about_air_conditioning
    # Do sth here...
  end

end
