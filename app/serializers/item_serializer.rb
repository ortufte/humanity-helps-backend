class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :quantity, null: false, :user_id, :user
end
