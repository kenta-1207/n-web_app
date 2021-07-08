class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :manufacturer, foreign_key: true
      t.references :item_name, foreign_key: true
      t.references :name, foreign_key: true
      t.references :email, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
