class Product < ApplicationRecord
  belongs_to :product_category
  has_many :product_prices
  has_many :product_images
  has_many :sale_details
end
