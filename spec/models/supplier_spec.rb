require 'rails_helper'

RSpec.describe Supplier, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:supplier).valid?). to eq true
    end
  end
end
