class Lot < ApplicationRecord
    has_many :codes
    validates :lot_name, presence: true,
                    length: { minimum: 5 }
end
