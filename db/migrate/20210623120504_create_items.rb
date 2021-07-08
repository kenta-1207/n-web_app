class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :manufacturer,      null: false
      t.string :item_name,         null: false
      t.string :standard,          null: false
      t.string :storage_condition, null: false
      t.string :sell_by
      t.text   :description,       null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
