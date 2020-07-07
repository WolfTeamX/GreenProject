class CreateAboutUsPages < ActiveRecord::Migration[6.0]
  def change
    create_table :about_us_pages do |t|

      t.timestamps
    end
  end
end
