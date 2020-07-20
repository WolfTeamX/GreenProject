class FaqQuestionsController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def add
    @page = FaqPage.find(params[:format])
  end

  def create
    @question = FaqQuestion.new
    @question.title = params[:title]
    @question.answer = params[:answer]
    @question.faq_page_id = params[:page]
    @question.save
    redirect_to offer_admin_path
  end

  def edit
    @question = FaqQuestion.find(params[:format])
  end

  def update
    abort params.inspect
  end

  def destroy

  end
end
