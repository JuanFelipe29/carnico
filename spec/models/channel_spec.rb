require 'rails_helper'

RSpec.describe Channel, type: :model do
  describe 'valid factory' do
    expect(build(:channel).valid?). to eq true
  end
end
