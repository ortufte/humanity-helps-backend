class Item < ApplicationRecord

    validates :description, presence: true
    validates :quantity, presence: true

end
