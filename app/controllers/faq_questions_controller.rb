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
    @question = FaqQuestion.find(params[:faq_question][:id])
    @question.title = params[:faq_question][:title]
    @question.answer = params[:faq_question][:answer]
    @question.save
    redirect_back fallback_location: root_path
  end

  def destroy

  end
end
