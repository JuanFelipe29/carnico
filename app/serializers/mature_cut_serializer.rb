class MatureCutSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :final_weight
  has_one :cut
end
