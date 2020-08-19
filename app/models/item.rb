class Item < ApplicationRecord
    belongs_to :site
            
    validates :description, presence: true
    validates :quantity, presence: true

end
