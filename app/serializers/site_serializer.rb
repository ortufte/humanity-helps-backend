class SiteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :street_address, :city, :state, :zipcode, :items, :days
end
