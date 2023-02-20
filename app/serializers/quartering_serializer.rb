class QuarteringSerializer < ActiveModel::Serializer
  attributes :id, :lot, :date
  has_one :channel
  has_one :user
end
