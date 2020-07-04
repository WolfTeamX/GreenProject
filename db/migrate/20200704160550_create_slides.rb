class CreateSlides < ActiveRecord::Migration[6.0]
  def change
    create_table :slides do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
