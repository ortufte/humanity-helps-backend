class RenameForeignKeyinItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :user_id, :site_id
  end
end
