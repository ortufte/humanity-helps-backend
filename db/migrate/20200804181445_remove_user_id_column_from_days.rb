class RemoveUserIdColumnFromDays < ActiveRecord::Migration[6.0]
  def change
    remove_column :days, :user_id, :integer
  end
end
