require 'rails_helper'

RSpec.describe Quartering, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:quartering).valid?). to eq true
    end
  end
end
