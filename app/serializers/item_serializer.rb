class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :quantity, :site_id, :site
end
