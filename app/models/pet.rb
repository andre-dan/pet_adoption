class Pet <ApplicationRecord
    has_one :adoption
    validates :name, :pet_type, presence: true
    enum pet_type: { dog: 'dog', cat: 'cat', other: 'other' } 
end