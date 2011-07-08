require "spec_helper"

describe TdocsController do
  describe "routing" do

    it "routes to #index" do
      get("/tdocs").should route_to("tdocs#index")
    end

    it "routes to #new" do
      get("/tdocs/new").should route_to("tdocs#new")
    end

    it "routes to #show" do
      get("/tdocs/1").should route_to("tdocs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tdocs/1/edit").should route_to("tdocs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tdocs").should route_to("tdocs#create")
    end

    it "routes to #update" do
      put("/tdocs/1").should route_to("tdocs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tdocs/1").should route_to("tdocs#destroy", :id => "1")
    end

  end
end
