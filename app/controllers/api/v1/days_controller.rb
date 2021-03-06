class Api::V1::DaysController < ApplicationController

    def index
        days = Day.all 
        render json: DaySerializer.new(days)
    end

    def create
        day = Day.new(day_params)
        if day.save
            render json: DaySerializer.new(day), status: :accepted
        else
            render json: { errors: day.errors.full_messages }
        end
    end

    private
    
    def day_params
        params.require(:day).permit(:day_of_week, :start_time, :end_time, :site_id)
    end


end

