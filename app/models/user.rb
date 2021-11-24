class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :items
  has_many :school_items
  has_many :user_contacts
  has_many :contacts, through: :user_contacts
       
  
  with_options presence: true do
    validates :name
    validates :name_ruby, format: {with: /\A[ぁ-んー－]+\z/}
    validates :occupation 
    validates :position
    validates :email
    validates :page_select_id, numericality: { other_than: 1 }
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :page_select

end
