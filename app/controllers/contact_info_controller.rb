class ContactInfoController < ApplicationController
  before_action :authenticate_user!

  def edit
    @contact = ContactInfo.find(1)
    @target_email = Rails.application.config.target_email
  end

  def update
    @contact = ContactInfo.find(1)
    @contact.address = params[:address]
    @contact.phone = params[:phone]
    @contact.email = params[:email]
    @contact.image.attach(params[:image]) unless params[:image].nil?
    @contact.save
    unless params[:target_email].nil?
      Rails.application.config.target_email = params[:target_email]
    end

    redirect_back fallback_location: root_path
  end
end
