class CreateOurRealizations < ActiveRecord::Migration[6.0]
  def change
    create_table :our_realizations do |t|

      t.timestamps
    end
  end
end
