class CreateFooters < ActiveRecord::Migration[6.0]
  def change
    create_table :footers do |t|
      t.string :description

      t.timestamps
    end
  end
end
