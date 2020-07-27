class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  after_commit :set_placeholder, on: [:create]

  def set_placeholder
    if defined?(image)
      unless self.image.attached?
        self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", "placeholder.png")), filename: 'placeholder.png' , content_type: "image/png")
      end
    end
  end
end
