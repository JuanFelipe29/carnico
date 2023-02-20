require "rails_helper"

RSpec.describe QuarteringsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/quarterings").to route_to("quarterings#index")
    end

    it "routes to #new" do
      expect(get: "/quarterings/new").to route_to("quarterings#new")
    end

    it "routes to #show" do
      expect(get: "/quarterings/1").to route_to("quarterings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/quarterings/1/edit").to route_to("quarterings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/quarterings").to route_to("quarterings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/quarterings/1").to route_to("quarterings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/quarterings/1").to route_to("quarterings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/quarterings/1").to route_to("quarterings#destroy", id: "1")
    end
  end
end
