require "spec_helper"

describe LocalidadsController do
  describe "routing" do

    it "routes to #index" do
      get("/localidads").should route_to("localidads#index")
    end

    it "routes to #new" do
      get("/localidads/new").should route_to("localidads#new")
    end

    it "routes to #show" do
      get("/localidads/1").should route_to("localidads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/localidads/1/edit").should route_to("localidads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/localidads").should route_to("localidads#create")
    end

    it "routes to #update" do
      put("/localidads/1").should route_to("localidads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/localidads/1").should route_to("localidads#destroy", :id => "1")
    end

  end
end
