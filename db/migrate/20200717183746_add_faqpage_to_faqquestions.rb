class AddFaqpageToFaqquestions < ActiveRecord::Migration[6.0]
  def change
    add_reference :faq_questions, :faq_page, null: false, foreign_key: true
  end
end
