class RenameForeignKeyInDays < ActiveRecord::Migration[6.0]
  def change
    rename_column :days, :user_id, :site_id
  end
end
