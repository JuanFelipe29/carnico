class MatureCut < ApplicationRecord
  belongs_to :cut

  after_create :set_process

  def set_process
    self.cut.update(processing_type: self.class.to_s)
  end
end
