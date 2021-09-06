class Tag < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食' },
    { id: 3, name: '洋食' },
    { id: 4, name: '中華' },
    { id: 5, name: '揚げ' },
    { id: 6, name: '炒め' },
    { id: 7, name: '湯せん' },
    { id: 8, name: '焼き' },
    { id: 9, name: '蒸し' },
    { id: 10, name: '自然解凍' },
    { id: 11, name: '鍋' },
    { id: 12, name: '牛' },
    { id: 13, name: '豚' },
    { id: 14, name: '鶏' },
    { id: 15, name: '海鮮' },
    { id: 16, name: '山菜' },
    { id: 17, name: '野菜' },
    { id: 18, name: 'ラーメン' },
    { id: 19, name: 'うどん' },
    { id: 20, name: 'そば' },
    { id: 21, name: 'パスタ' },
    { id: 22, name: 'パン' },
    { id: 23, name: 'ご飯' },
    { id: 24, name: 'パン' },
    { id: 25, name: '丼' },
    { id: 26, name: 'オードブル' },
    { id: 27, name: '弁当' },
    { id: 28, name: '副菜' },
    { id: 29, name: '先付' },
    { id: 30, name: '椀種' },
    { id: 31, name: '八寸' },
    { id: 32, name: 'お子様' },
    { id: 33, name: 'スイーツ' },
    { id: 34, name: '洋菓子' },
    { id: 35, name: '和菓子' },
    { id: 36, name: '調味料' },
    { id: 37, name: 'ドレッシング' },
    { id: 38, name: 'タレ' },
    { id: 39, name: '乾物' },
  ]

  include ActiveHash::Associations
  has_many :item_connects
  has_many :stock_items, through: :item_connects

end
