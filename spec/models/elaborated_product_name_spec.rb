require 'rails_helper'

RSpec.describe ElaboratedProductName, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:elaborated_product_name).valid?). to eq true
    end
  end
end
