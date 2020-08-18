class Site < ApplicationRecord

    self.table_name = "users"

    has_many :items, dependent: :destroy, foreign_key: 'user_id'
    has_many :days, dependent: :destroy, foreign_key: 'user_id'

    validates :name, presence: true
    validates :street_address, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true, length: { maximum: 5 }

end
