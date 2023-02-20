class CutElaborated < ApplicationRecord
  belongs_to :cut
  belongs_to :elaborated_product_name

  after_create :set_process

  def set_process
    self.cut.update_attributes(processing_type: self.class.to_s)
  end
end
