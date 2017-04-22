class SaleSerializer < ActiveModel::Serializer
  attributes :id, :discount, :total
  has_one :user
end
