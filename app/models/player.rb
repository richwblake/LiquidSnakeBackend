class Player < ApplicationRecord
    validates :name, :score, presence: true
    validates :name, length: { is: 3 }
end
