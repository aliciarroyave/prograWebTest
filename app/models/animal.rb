class Animal < ApplicationRecord
    validates :name, presence: true
    validates :descripcion, presence: true
    validates :sexualidad, presence: true
    validates :tamaño, presence: true


end
