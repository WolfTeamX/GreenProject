class ApplicationRecord < ActiveRecord::Base
  require 'mini_magick'
  self.abstract_class = true

  after_commit :set_placeholder, on: [:create]
  after_commit :compress_image, on: [:create, :update]

  def set_placeholder
    if defined? image
      unless self.image.attached?
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
        if @compressed_image || self.image.blob.content_type == "image/svg+xml"
          return
        end
        @compressed_image = true
        processed = ImageProcessing::MiniMagick
                        .source(ActiveStorage::Blob.service.path_for(image.key))
                        .resize_to_limit(1920, 1920)
                        .call
        self.image.attach(io: processed, filename: self.image.blob.filename, content_type: self.image.blob.content_type)
      end
    end
  end
end
