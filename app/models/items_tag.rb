class ItemsTag

  include ActiveModel::model
  attr_accessor :stock_item_manufacturer, :stock_item_name, :stock_item_standard, :stock_item_strage_condition, :stock_item_description, :image, :name

  with_options presence: true do
    validates :stock_item_manufacturer
    validates :stock_item_name
    validates :stock_item_standard
    validates :stock_item_strage_condition
    validates :stock_item_description
    validates :name
  end

  def save
    stock_item = StockItem.create(stock_item_manufacturer: stock_item_manufacturer, stock_item_name: stock_item_name, stock_item_standard: stock_item_standard, stock_item_description: stock_item_description, image: image)

    tag = Tag.create(name: name)

    StockItem.create(stock_item_id: stock_item.id, tag_id: tag.id)
  end
    
end
