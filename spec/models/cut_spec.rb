require 'rails_helper'

RSpec.describe Cut, type: :model do
  describe 'factory' do
    it 'creates a valid fatory' do
      expect(build(:cut).valid?). to eq true
    end
  end

  describe '#process' do
    let(:cut) { create(:cut) }

    it 'returns nil' do
      expect(cut.process).to eq nil
    end

    context 'when processing_type is MatureCut' do
      let!(:mature_cut) { create(:mature_cut, cut: cut) }

      it 'returns mature_cut relationship' do
        expect(cut.process).to eq mature_cut
      end
    end

    context 'when processing_type is CutElaborated' do
      let!(:cut_elaborated) { create(:cut_elaborated, cut: cut) }

      it 'returns cut_elaborated relationship' do
        expect(cut.process).to eq cut_elaborated
      end
    end

    context 'when processing_type is FinalCut' do
      let(:cut) { create(:cut, processing_type: 'FinalCut') }

      it 'returns self record' do
        expect(cut.process).to eq cut
      end
    end
  end
end
