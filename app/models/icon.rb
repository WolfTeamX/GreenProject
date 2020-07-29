class Icon < ApplicationRecord
  has_one_attached :image

  validate :check_image_mime_type

  private

  def check_image_mime_type
    if image.attached? && !image.content_type.in?(%w(image/svg+xml))
      errors.add(:image, "Must be a SVG file.")
    end
  end

end
