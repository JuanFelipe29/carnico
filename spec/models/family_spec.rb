require 'rails_helper'

RSpec.describe Family, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:family).valid?). to eq true
    end
  end
end
