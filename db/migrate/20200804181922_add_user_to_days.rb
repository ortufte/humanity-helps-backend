class AddUserToDays < ActiveRecord::Migration[6.0]
  def change
    add_reference :days, :user, foreign_key: true
  end
end
