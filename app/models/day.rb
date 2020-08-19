class Day < ApplicationRecord

    belongs_to :site

    validates :day_of_week, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
end
