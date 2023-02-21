require 'rails_helper'

RSpec.describe Piece, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:piece).valid?). to eq true
    end
  end
end
