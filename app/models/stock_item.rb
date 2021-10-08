class StockItem < ApplicationRecord

  has_one_attached :image
  has_many :item_connects, dependent: :destroy
  has_many :tags, through: :item_connects

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
