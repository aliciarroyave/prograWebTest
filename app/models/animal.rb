class Animal < ApplicationRecord
    validates :name, presence: true
    validates :descripcion, presence: true
    validates :sexualidad, presence: true
    validates :tamaño, presence: true

    has_many :animal_types
    has_many :types, through :animal_types
end
