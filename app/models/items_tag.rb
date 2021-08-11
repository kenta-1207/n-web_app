class ItemsTag

  include ActiveModel::Model
  attr_accessor :stock_item_manufacturer, :stock_item_name, :stock_item_standard, :stock_item_strage_condition, :stock_item_description, :image, :name

  with_options presence: true do
    validates :stock_item_manufacturer
    validates :stock_item_name
    validates :stock_item_standard
    validates :stock_item_strage_condition
    validates :stock_item_description
    validates :name
    validates :image
  end

  def save
    stock_item = StockItem.create(stock_item_manufacturer: stock_item_manufacturer, stock_item_name: stock_item_name, stock_item_standard: stock_item_standard, stock_item_strage_condition: stock_item_strage_condition, stock_item_description: stock_item_description, image: image)
    tag = Tag.where(name: name).first_or_initialize
    tag.save

    ItemTag.create(stock_item_id: stock_item.id, tag_id: tag.id)
  end
    
end
