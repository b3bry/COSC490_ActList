class ItemsController < ApplicationController
  def new
    @list_id = params[:list_id]
    @item = Item.new
  end

  def create
    @item = Item.new(params.require(:item).permit(:name,:list_id))
    if @item.save
      redirect_to lists_view_path(:list_id => @item.list_id)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.remove_from_list
    @item.destroy
    redirect_to :back
  end

  def delete
  end

  def up
    @item = Item.find(params[:id])
    @item.move_higher
    redirect_to :back
  end

  def down
    @item = Item.find(params[:id])
    @item.move_lower
    redirect_to :back
  end

  def top
    @item = Item.find(params[:id])
    @item.move_to_top
    redirect_to :back
  end

  def bottom
    @item = Item.find(params[:id])
    @item.move_to_bottom
    redirect_to :back
  end
end
