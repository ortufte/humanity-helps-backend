class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :day_of_week, :start_time, :end_time, null: false, :user_id, :user
end
