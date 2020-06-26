class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.text :short_description
      t.text :address

      t.timestamps
    end
  end
end
