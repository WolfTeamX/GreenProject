class AddLinkToIcon < ActiveRecord::Migration[6.0]
  def change
    add_column :icons, :link, :string
  end
end
