class CreateOfferParagraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :offer_paragraphs do |t|
      t.string :header
      t.string :title

      t.timestamps
    end
  end
end
