class CreateStockItems < ActiveRecord::Migration[6.0]
  def change
    create_table :stock_items do |t|
      t.string :stock_item_manufacturer,     null: false
      t.string :stock_item_name,             null: false
      t.string :stock_item_standard,         null: false
      t.string :stock_item_strage_condition, null: false
      t.text :stock_item_description,        null: false
      t.timestamps
    end
  end
end
