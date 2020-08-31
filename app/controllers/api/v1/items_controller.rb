class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all 
        render json: ItemSerializer.new(items) 
    end

    def create
        item = Item.new(item_params)
        if item.save
            render json: ItemSerializer.new(item), status: :accepted
        else 
            render json: { errors: item.errors.full_messages }
        end
    end

    private

    def item_params
        params.require(:item).permit(:description, :quantity, :site_id)
    end

end

