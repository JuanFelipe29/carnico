require "rails_helper"

RSpec.describe ElaboratedProductNamesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/elaborated_product_names").to route_to("elaborated_product_names#index")
    end

    it "routes to #new" do
      expect(get: "/elaborated_product_names/new").to route_to("elaborated_product_names#new")
    end

    it "routes to #show" do
      expect(get: "/elaborated_product_names/1").to route_to("elaborated_product_names#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/elaborated_product_names/1/edit").to route_to("elaborated_product_names#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/elaborated_product_names").to route_to("elaborated_product_names#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/elaborated_product_names/1").to route_to("elaborated_product_names#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/elaborated_product_names/1").to route_to("elaborated_product_names#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/elaborated_product_names/1").to route_to("elaborated_product_names#destroy", id: "1")
    end
  end
end
