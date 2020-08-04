class Api::V1::DaysController < ApplicationController

    def index
        days = Day.all 
        render json: days
    end

    def create
        day = Day.new(day_params)
        render json: day
    end

    private
    
    def day_params
        params.require(:day).permit(:day_of_week, :start_time, :end_time, :user_id)
    end

end
