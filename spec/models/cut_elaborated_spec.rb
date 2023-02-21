require 'rails_helper'

RSpec.describe CutElaborated, type: :model do
  describe 'valid factory' do
    expect(build(:cut_elaborated).valid?). to eq true
  end
end
