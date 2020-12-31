class RealizationCategory < ApplicationRecord
  has_one_attached :image
  has_many :realizations
end
