require "rails_helper"

RSpec.describe MatureCutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mature_cuts").to route_to("mature_cuts#index")
    end

    it "routes to #new" do
      expect(get: "/mature_cuts/new").to route_to("mature_cuts#new")
    end

    it "routes to #show" do
      expect(get: "/mature_cuts/1").to route_to("mature_cuts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mature_cuts/1/edit").to route_to("mature_cuts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mature_cuts").to route_to("mature_cuts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mature_cuts/1").to route_to("mature_cuts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mature_cuts/1").to route_to("mature_cuts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mature_cuts/1").to route_to("mature_cuts#destroy", id: "1")
    end
  end
end
