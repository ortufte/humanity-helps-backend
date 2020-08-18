class Item < ApplicationRecord
    belongs_to :site, foreign_key: 'user_id'

    validates :description, presence: true
    validates :quantity, presence: true

end
