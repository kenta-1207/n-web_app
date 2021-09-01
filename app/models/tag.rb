class Tag < ApplicationRecord

  has_many :item_connects
  has_many :tags, through: :item_connects

end