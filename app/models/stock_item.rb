class StockItem < ApplicationRecord

  has_one_attached :image
  has_many :item_connects, dependent: :destroy
  has_many :tags, through: :item_connects

end
