class CreateAboutUsParagraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :about_us_paragraphs do |t|
      t.string :title

      t.timestamps
    end
  end
end
