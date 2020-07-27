class FootersController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def edit
    @footer = Footer.find(params[:format])
  end

  def update
    footer = Footer.find(1)
    footer.description = params[:footer][:description]
    footer.save
    redirect_to admin_index_path
  end
end
