require 'rails_helper'

RSpec.describe Family, type: :model do
  describe 'valid factory' do
    expect(build(:family).valid?). to eq true
  end
end
