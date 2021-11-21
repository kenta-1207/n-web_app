class StockItem < ApplicationRecord

  has_one_attached :image
  has_many :item_connects, dependent: :destroy
  has_many :tags, through: :item_connects

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  with_options presence: true do
    validates :stock_item_manufacturer
    validates :stock_item_name
    validates :stock_item_standard
    validates :stock_item_strage_condition
    validates :stock_item_description
    validates :image
  end
end
