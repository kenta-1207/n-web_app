class CreateItemConnects < ActiveRecord::Migration[6.0]
  def change
    create_table :item_connects do |t|
      t.references :stock_item, foreign_key: true
      t.references :tag,        foreign_key: true
      t.timestamps
    end
  end
end
