class CreateDesignatedCustomersImages < ActiveRecord::Migration[6.0]
  def change
    create_table :designated_customers_images do |t|
      t.string :text

      t.timestamps
    end
  end
end
