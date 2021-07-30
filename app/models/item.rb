class Item < ApplicationRecord

  with_options presence: true do
    validates :manufacturer
    validates :item_name
    validates :standard
    validates :storage_condition
    validates :description
    validates :images
    validates :user_id
  end

  belongs_to :user
  has_many_attached :images

end
