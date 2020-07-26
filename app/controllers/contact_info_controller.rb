class ContactInfoController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def edit
    @contact = ContactInfo.find(1)
  end

  def update
    @contact = ContactInfo.find(1)
    @contact.address = params[:address]
    @contact.phone = params[:phone]
    @contact.email = params[:email]
    @contact.save
    redirect_back fallback_location: root_path
  end
end