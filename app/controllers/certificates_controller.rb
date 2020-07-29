class CertificatesController < ApplicationController
  before_action :authenticate_user!

  def add

  end

  def create
    params[:image].each do |image|
      certificate = Certificate.new
      certificate.image.attach(image)
      certificate.save
    end
    redirect_to certificates_path
  end

  def destroy_certificate
    certificate = Certificate.find(params[:format])
    certificate.destroy
    redirect_to certificates_path
  end
end
