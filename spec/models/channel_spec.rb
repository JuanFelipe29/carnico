require 'rails_helper'

RSpec.describe Channel, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:channel).valid?). to eq true
    end
  end
end
