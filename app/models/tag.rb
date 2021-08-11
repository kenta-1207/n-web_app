class Tag < ApplicationRecord

  has_many :item_tags
  has_many :stock_items, through: :item_tags

  validates :name, uniqueness: true

end
