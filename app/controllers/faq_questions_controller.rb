class FaqQuestionsController < ApplicationController
  before_action :authenticate_user!

  def add
    @page = FaqPage.find(params[:format])
  end

  def create
    @question = FaqQuestion.new
    @question.title = params[:title]
    @question.answer = params[:answer]
    @question.faq_page_id = params[:page]
    @question.save
    redirect_to faq_path(id: params[:page])
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
