require 'rails_helper'

RSpec.describe "ProductCategories", type: :request do
  describe "GET /product_categories" do
    it "works! (now write some real specs)" do
      get product_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
