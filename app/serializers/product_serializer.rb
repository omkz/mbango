class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_active, :description

  has_many :product_images
  has_many :product_prices
end
