class Realization < ApplicationRecord
  belongs_to :realization_category
  has_one_attached :image
end
