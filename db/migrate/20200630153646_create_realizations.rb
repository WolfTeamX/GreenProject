class CreateRealizations < ActiveRecord::Migration[6.0]
  def change
    create_table :realizations do |t|

      t.timestamps
    end
  end
end
