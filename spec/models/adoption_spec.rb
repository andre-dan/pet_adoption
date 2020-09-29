require 'rails_helper'

RSpec.describe Adoption, type: :model do
  describe 'validates' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:date) }
  end

  describe 'associations' do
    it { should belong_to(:pet) }
  end

end