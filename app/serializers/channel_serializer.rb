class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :income_type, :description, :crotal, :lot, :weight, :temperature, :cost, :total, :slaughter, :birth
  has_one :family
  has_one :supplier
  has_one :user
end
