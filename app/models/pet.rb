class Pet <ApplicationRecord
    validates :name, :pet_type, presence: true
    enum pet_type: { dog: 'dog', cat: 'cat', other: 'other' } 
end