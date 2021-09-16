class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :contact_user_name,       null: false
      t.string :contact_user_email,      null: false
      t.string :contact_user_occupation, null: false
      t.string :contact_manufacturer,    null: false
      t.string :contact_item_name,       null: false
      t.text :message
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
