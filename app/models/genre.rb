class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '焼き' },
    { id: 3, name: '揚げ' },
    { id: 4, name: '蒸し' },
    { id: 5, name: 'レンジ' },
    { id: 6, name: '自然解凍' },
    { id: 7, name: '湯せん' },
    { id: 8, name: 'オードブル' },
    { id: 9, name: 'お弁当' },
    { id: 11, name: 'お子様' },
    { id: 12, name: '丼' },
    { id: 13, name: '定食' },
    { id: 14, name: '和食' },
    { id: 15, name: '中華' },
    { id: 16, name: '洋食' },
    { id: 17, name: '前菜' },
    { id: 18, name: '八寸' },
    { id: 19, name: 'ベスト' },
    { id: 20, name: '調味料' },
    { id: 21, name: '肉' },
    { id: 22, name: '野菜' }
  ]
 
   include ActiveHash::Associations
   has_many :stock_items
end
 