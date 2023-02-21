require 'rails_helper'

RSpec.describe MatureCut, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:mature_cut).valid?). to eq true
    end
  end

  describe 'callbacks' do
    describe 'after_create' do
      let(:cut) { create(:cut) }
    
      it 'sets Cut processing_type' do
        expect { create(:mature_cut, cut: cut) }.to change{ cut.processing_type }.to('MatureCut')
      end
    end
  end
end
