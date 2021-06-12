class ItemsController < ApplicationController
  def index
    # @item = Item.order(created_at: :desc)
    @items = Item.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    # binding.pry
    Item.create!(item_params)
    redirect_to items_path
  end

  private

  def item_params
    # params.require(:items).permit(:name, :price)
    params.require(:item).permit(:name, :price)
  end
end

# エラー1
# @items => nil
# 場所：items_controller.rb
# indexアクションを @items = Item.order(created_at: :desc)に修正

# エラー2
# ActionController::ParameterMissing: param is missing or the value is empty: items
# 場所：items_controller.rb ストロングパラメータ修正
# .require(:item)に変更

# エラー3
# Unpermitted parameter: :nickname
# 場所：_form.html.erb
# :nicknameを:nameに修正
