class CutElaboratedSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :cut
  has_one :elaborated_product_name
end
