class ItemTag < ApplicationRecord

  belongs_to :stock_item
  belongs_to :tag
  
end
