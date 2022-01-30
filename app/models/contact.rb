class Contact < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :contact_user_name
    validates :contact_user_email
    validates :contact_user_occupation
    validates :contact_manufacturer
    validates :contact_item_name
  end
end