class CutSerializer < ActiveModel::Serializer
  attributes :id, :weight, :final_weight, :processing_type
  has_one :piece
  has_one :cut_name
end
