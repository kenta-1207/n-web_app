class CreateSchoolLunches < ActiveRecord::Migration[6.0]
  def change
    create_table :school_lunches do |t|
      t.string :manufacturer,    null: false
      t.string :lunch_item_name, null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
