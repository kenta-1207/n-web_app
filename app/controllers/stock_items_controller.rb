class StockItemsController < ApplicationController

  def index
    @stock_items = StockItem.all.order(created_at: :desc)
  end

  def new
    @stock_item = ItemsTag.new
  end

  def create
    @stock_item = ItemsTag.new(stock_item_params)
  if @stock_item.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @stock_item = StockItem.find(params[:id])
  end

  def update
    if @stock_item.update(stock_item_params)
      redirect_to contacts_path
    else
      render :edit
    end
  end

  def destroy
    @stock_item = StockItem.find(params[:id])
    if @stock_item.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def stock_item_params
    params.require(:items_tag).permit(:stock_item_manufacturer, :stock_item_name, :stock_item_standard, :stock_item_strage_condition, :stock_item_description, :name, :image)
  end
end
