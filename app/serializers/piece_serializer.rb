class PieceSerializer < ActiveModel::Serializer
  attributes :id, :weight, :final_weight
  has_one :quartering
  has_one :piece_name
end
