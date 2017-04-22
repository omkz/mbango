require "rails_helper"

RSpec.describe SaleDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sale_details").to route_to("sale_details#index")
    end

    it "routes to #new" do
      expect(:get => "/sale_details/new").to route_to("sale_details#new")
    end

    it "routes to #show" do
      expect(:get => "/sale_details/1").to route_to("sale_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sale_details/1/edit").to route_to("sale_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sale_details").to route_to("sale_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sale_details/1").to route_to("sale_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sale_details/1").to route_to("sale_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sale_details/1").to route_to("sale_details#destroy", :id => "1")
    end

  end
end
