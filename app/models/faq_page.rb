class FaqPage < ApplicationRecord
  has_one_attached :image
  has_many :faq_questions
end