require "spec_helper"

describe Spree::AuthorsController do
  describe "routing" do

    it "routes to #index" do
      get("/spree_authors").should route_to("spree_authors#index")
    end

    it "routes to #new" do
      get("/spree_authors/new").should route_to("spree_authors#new")
    end

    it "routes to #show" do
      get("/spree_authors/1").should route_to("spree_authors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spree_authors/1/edit").should route_to("spree_authors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spree_authors").should route_to("spree_authors#create")
    end

    it "routes to #update" do
      put("/spree_authors/1").should route_to("spree_authors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spree_authors/1").should route_to("spree_authors#destroy", :id => "1")
    end

  end
end
