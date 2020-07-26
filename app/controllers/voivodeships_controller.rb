class VoivodeshipsController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'


  def add

  end

  def create
    voivodeship = Voivodeship.new
    voivodeship.name = params[:name]
    voivodeship.image.attach(params[:image]) unless params[:image].nil?
    voivodeship.save
    redirect_to about_us_admin_path
  end

  def edit
    @voivodeship = Voivodeship.find(params[:format])
  end

  def update
    voivodeship = Voivodeship.find(params[:id])
    voivodeship.name = params[:name]
    voivodeship.image.attach(params[:image]) unless params[:image].nil?
    voivodeship.save
    redirect_to about_us_admin_path
  end

  def destroy_voivodeship
    voivodeship = Voivodeship.find(params[:id])
    voivodeship.destroy
    redirect_to about_us_admin_path
  end
end