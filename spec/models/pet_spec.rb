require 'rails_helper'

RSpec.describe Pet, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:pet_type) }
    it { should validate_presence_of(:avatar) }
  end

  describe 'associations' do
    it { should have_one(:adoption) }
    it { should have_one_attached(:avatar) }
  end
  
  describe 'enums' do
    it { should define_enum_for(:pet_type).with_values(dog: 'dog', cat: 'cat', other: 'other').backed_by_column_of_type(:string) } 
  end
end
