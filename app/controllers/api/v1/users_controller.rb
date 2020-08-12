class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 
        render json: UserSerializer.new(users)
    end

    def create
        user = User.new(user_params)
        if user.save
          render json: UserSerializer.new(user)
        else
          render json: { errors: user.errors.full_messages }
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:name, :street_address, :city, :state, :zipcode, days_attributes: [:day_of_week, :start_time, :end_time], items_attributes: [:description, :quantity])
    end

end
