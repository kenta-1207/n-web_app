class DropTableItemContacts < ActiveRecord::Migration[6.0]
  def change
    drop_table :item_contacts
  end
end
