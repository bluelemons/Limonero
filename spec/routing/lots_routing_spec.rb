require "spec_helper"

describe LotsController do
  describe "routing" do

    it "routes to #index" do
      get("/lots").should route_to("lots#index")
    end

    it "routes to #new" do
      get("/lots/new").should route_to("lots#new")
    end

    it "routes to #show" do
      get("/lots/1").should route_to("lots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lots/1/edit").should route_to("lots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lots").should route_to("lots#create")
    end

    it "routes to #update" do
      put("/lots/1").should route_to("lots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lots/1").should route_to("lots#destroy", :id => "1")
    end

  end
end
