require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:user).valid?). to eq true
    end
  end
end
