class ItemsController < ApplicationController
  def index
    @item = Item.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    Item.create!(item_params)
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :price)
  end
end
