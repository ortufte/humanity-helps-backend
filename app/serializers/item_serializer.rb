class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :quantity, :user_id, :user
end
