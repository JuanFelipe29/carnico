require "rails_helper"

RSpec.describe CutNamesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cut_names").to route_to("cut_names#index")
    end

    it "routes to #new" do
      expect(get: "/cut_names/new").to route_to("cut_names#new")
    end

    it "routes to #show" do
      expect(get: "/cut_names/1").to route_to("cut_names#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cut_names/1/edit").to route_to("cut_names#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cut_names").to route_to("cut_names#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cut_names/1").to route_to("cut_names#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cut_names/1").to route_to("cut_names#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cut_names/1").to route_to("cut_names#destroy", id: "1")
    end
  end
end
