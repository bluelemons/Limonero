require "spec_helper"

describe CivilsController do
  describe "routing" do

    it "routes to #index" do
      get("/civils").should route_to("civils#index")
    end

    it "routes to #new" do
      get("/civils/new").should route_to("civils#new")
    end

    it "routes to #show" do
      get("/civils/1").should route_to("civils#show", :id => "1")
    end

    it "routes to #edit" do
      get("/civils/1/edit").should route_to("civils#edit", :id => "1")
    end

    it "routes to #create" do
      post("/civils").should route_to("civils#create")
    end

    it "routes to #update" do
      put("/civils/1").should route_to("civils#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/civils/1").should route_to("civils#destroy", :id => "1")
    end

  end
end
