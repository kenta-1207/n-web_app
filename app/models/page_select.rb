class PageSelect < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: '新商品情報'},
    { id: 3, name: '学校給食資料'}
  ]

  include ActiveHash::Associations
  has_many :users
end