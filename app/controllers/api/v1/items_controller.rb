class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all 
        render json: items 
    end

    def create
        item = Item.new(item_params)
        render json: item
    end

    private

    def item_params
        params.require(:item).permit(:description, :quantity, :user_id)
    end

end
