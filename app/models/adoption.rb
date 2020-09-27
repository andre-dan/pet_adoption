class Adoption < ApplicationRecord
    belongs_to :pet
    validates :name, :date, presence: true
end