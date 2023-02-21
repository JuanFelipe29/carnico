require 'rails_helper'

RSpec.describe CutName, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:cut_name).valid?). to eq true
    end
  end
end
