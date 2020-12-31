class AddCategoryToRealizations < ActiveRecord::Migration[6.0]
  def change
    add_reference :realizations, :realization_category, null: false, foreign_key: true
  end
end
