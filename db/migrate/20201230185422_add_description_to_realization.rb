class AddDescriptionToRealization < ActiveRecord::Migration[6.0]
  def change
    add_column :realizations, :description, :string
  end
end
