require "spec_helper"

describe TaddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/taddresses").should route_to("taddresses#index")
    end

    it "routes to #new" do
      get("/taddresses/new").should route_to("taddresses#new")
    end

    it "routes to #show" do
      get("/taddresses/1").should route_to("taddresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/taddresses/1/edit").should route_to("taddresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/taddresses").should route_to("taddresses#create")
    end

    it "routes to #update" do
      put("/taddresses/1").should route_to("taddresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/taddresses/1").should route_to("taddresses#destroy", :id => "1")
    end

  end
end
