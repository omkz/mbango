class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :products
end
