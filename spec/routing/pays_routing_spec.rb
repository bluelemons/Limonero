require "spec_helper"

describe PaysController do
  describe "routing" do

    it "routes to #index" do
      get("/pays").should route_to("pays#index")
    end

    it "routes to #new" do
      get("/pays/new").should route_to("pays#new")
    end

    it "routes to #show" do
      get("/pays/1").should route_to("pays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pays/1/edit").should route_to("pays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pays").should route_to("pays#create")
    end

    it "routes to #update" do
      put("/pays/1").should route_to("pays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pays/1").should route_to("pays#destroy", :id => "1")
    end

  end
end
