class StockItemsController < ApplicationController

  def index
    @stock_items = StockItem.all.order(created_at: :desc)
  end

  def new
    @stock_item = ItemsTag.new
  end

  def create
    @stock_item = ItemsTag.new(stock_item_params)
    if @stock_item.valid?
      @stock_item.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  private

  def stock_item_params
    params.require(:item_tag).permit(:stock_item_manufacturer, :stock_item_name, :stock_item_standard, :stock_item_strage_condition, :stock_item_description, :name)
end
