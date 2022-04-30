class Todo < ApplicationRecord
    # Aqui va la definicion de validaciones
    validates :title, presence: true # blank?
end
