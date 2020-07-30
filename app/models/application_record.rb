class ApplicationRecord < ActiveRecord::Base
  require 'mini_magick'
  self.abstract_class = true

  after_commit :set_placeholder, on: [:create]
  after_commit :compress_image, on: [:create, :update]

  def set_placeholder
    if defined? image
      unless self.image.attached?
        @minified = true
        self.image.attach(
            io: File.open(Rails.root.join("app", "assets", "images", "placeholder.png")),
            filename: 'placeholder.png',
            content_type: "image/png")
      end
    end
  end

  def compress_image
    if defined? image
      if self.image.attached?
        unless @minified
          processed = ImageProcessing::MiniMagick
                          .source(ActiveStorage::Blob.service.path_for(image.key))
                          .resize_to_limit(1920, 1920)
                          .call
          @minified = true
        end
      end
    end
  end
end
