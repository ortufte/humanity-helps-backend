class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
