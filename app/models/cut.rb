class Cut < ApplicationRecord
  belongs_to :piece
  belongs_to :cut_name
  has_one :mature_cut
  has_one :cut_elaborated

  def process
    case self.processing_type
    when 'MatureCut'
      self.mature_cut
    when 'CutElaborated'
      self.cut_elaborated
    when 'FinalCut'
      self
    else
      nil
    end
  end
end
