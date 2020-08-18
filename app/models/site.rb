class Site < ApplicationRecord

    has_many :items, dependent: :destroy
    has_many :days, dependent: :destroy

    validates :name, presence: true
    validates :street_address, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true, length: { maximum: 5 }

end
