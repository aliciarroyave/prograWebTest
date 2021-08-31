class Animal < ApplicationRecord
    validates :name, presence: true
    validates :caracteristica, presence: true
    validates :descripcion, presence: true
end
