class Pet <ApplicationRecord
    has_one_attached:avatar
    has_one :adoption
    validates :name, :pet_type, :avatar, presence: true
    enum pet_type: { dog: 'dog', cat: 'cat', other: 'other' } 
end