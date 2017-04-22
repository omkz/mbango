class SaleDetailSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :description, :sub_total, :description
  has_one :sale
  has_one :product
end
