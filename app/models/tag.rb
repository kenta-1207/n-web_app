class Tag < ApplicationRecord

  has_many :item_connects
  has_many :stock_items, through: :item_connects
end
