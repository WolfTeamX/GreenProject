class CreateFaqPages < ActiveRecord::Migration[6.0]
  def change
    create_table :faq_pages do |t|
      t.string :title

      t.timestamps
    end
  end
end
