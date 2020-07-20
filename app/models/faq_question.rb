class FaqQuestion < ApplicationRecord
  belongs_to :faq_page
  has_rich_text :answer
end