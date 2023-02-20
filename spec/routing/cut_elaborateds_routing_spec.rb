require "rails_helper"

RSpec.describe CutElaboratedsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cut_elaborateds").to route_to("cut_elaborateds#index")
    end

    it "routes to #new" do
      expect(get: "/cut_elaborateds/new").to route_to("cut_elaborateds#new")
    end

    it "routes to #show" do
      expect(get: "/cut_elaborateds/1").to route_to("cut_elaborateds#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cut_elaborateds/1/edit").to route_to("cut_elaborateds#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cut_elaborateds").to route_to("cut_elaborateds#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cut_elaborateds/1").to route_to("cut_elaborateds#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cut_elaborateds/1").to route_to("cut_elaborateds#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cut_elaborateds/1").to route_to("cut_elaborateds#destroy", id: "1")
    end
  end
end
