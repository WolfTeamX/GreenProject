# frozen_string_literal: true

class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def admin_index
    @slides = Slide.all
    @offers = MainOffer.all
    @images = DesignatedCustomersImage.all
    @icons = Icon.all
  end

  def add_slide
    # something
  end

  def settings
    if request.post?
      exists = Setting.exists? id: 1
      setting = exists ? Setting.find(1) : Setting.new
      setting.short_description = params[:short_description]
      setting.address = params[:contact]
      setting.save
    end
    @current_setting = (Setting.exists? id: 1) ? Setting.find(1) : nil
  end

  def realizations
    @realizations = Realization.paginate(page: params[:page], per_page: 9).order('created_at DESC')
  end

  def about_us
    @page = AboutUsPage.find(1)
    @paragraphs = AboutUsParagraph.all
  end

  def offer
    @offers = OfferParagraph.all
  end

  def contact

  end
end
