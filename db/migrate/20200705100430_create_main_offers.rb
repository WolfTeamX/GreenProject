class CreateMainOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :main_offers do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
