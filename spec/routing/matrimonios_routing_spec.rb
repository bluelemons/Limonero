require "spec_helper"

describe MatrimoniosController do
  describe "routing" do

    it "routes to #index" do
      get("/matrimonios").should route_to("matrimonios#index")
    end

    it "routes to #new" do
      get("/matrimonios/new").should route_to("matrimonios#new")
    end

    it "routes to #show" do
      get("/matrimonios/1").should route_to("matrimonios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/matrimonios/1/edit").should route_to("matrimonios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/matrimonios").should route_to("matrimonios#create")
    end

    it "routes to #update" do
      put("/matrimonios/1").should route_to("matrimonios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/matrimonios/1").should route_to("matrimonios#destroy", :id => "1")
    end

  end
end
