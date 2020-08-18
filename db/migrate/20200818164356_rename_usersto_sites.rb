class RenameUserstoSites < ActiveRecord::Migration[6.0]
  def change
    rename_table :users, :sites
  end
end
