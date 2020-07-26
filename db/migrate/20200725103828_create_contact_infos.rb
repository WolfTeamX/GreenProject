class CreateContactInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_infos do |t|
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
