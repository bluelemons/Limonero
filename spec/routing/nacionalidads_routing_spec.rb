require "spec_helper"

describe NacionalidadsController do
  describe "routing" do

    it "routes to #index" do
      get("/nacionalidads").should route_to("nacionalidads#index")
    end

    it "routes to #new" do
      get("/nacionalidads/new").should route_to("nacionalidads#new")
    end

    it "routes to #show" do
      get("/nacionalidads/1").should route_to("nacionalidads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nacionalidads/1/edit").should route_to("nacionalidads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nacionalidads").should route_to("nacionalidads#create")
    end

    it "routes to #update" do
      put("/nacionalidads/1").should route_to("nacionalidads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nacionalidads/1").should route_to("nacionalidads#destroy", :id => "1")
    end

  end
end
