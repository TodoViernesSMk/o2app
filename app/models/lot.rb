class Lot < ApplicationRecord
    validates :lot_name, presence: true,
                    length: { minimum: 5 }
end
