class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.string :day_of_week
      t.string :start_time
      t.string :end_time
      t.integer :user_id

      t.timestamps
    end
  end
end
