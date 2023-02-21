require 'rails_helper'

RSpec.describe Supplier, type: :model do
  describe 'valid factory' do
    expect(build(:suppluer).valid?). to eq true
  end
end
