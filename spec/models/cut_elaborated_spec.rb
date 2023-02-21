require 'rails_helper'

RSpec.describe CutElaborated, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:cut_elaborated).valid?). to eq true
    end
  end

  describe 'callbacks' do
    describe 'after_create' do
      let(:cut) { create(:cut) }
    
      it 'sets Cut processing_type' do
        expect { create(:cut_elaborated, cut: cut) }.to change{ cut.processing_type }.to('CutElaborated')
      end
    end
  end
end
