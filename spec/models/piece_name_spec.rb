require 'rails_helper'

RSpec.describe PieceName, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:piece_name).valid?). to eq true
    end
  end
end
