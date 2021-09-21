class Type < ApplicationRecord
    validates :name, presence: true

    has_many :animal_types
    has_many :animals, through :animal_types
end
