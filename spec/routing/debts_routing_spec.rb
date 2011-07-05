require "spec_helper"

describe DebtsController do
  describe "routing" do

    it "routes to #index" do
      get("/debts").should route_to("debts#index")
    end

    it "routes to #new" do
      get("/debts/new").should route_to("debts#new")
    end

    it "routes to #show" do
      get("/debts/1").should route_to("debts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/debts/1/edit").should route_to("debts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/debts").should route_to("debts#create")
    end

    it "routes to #update" do
      put("/debts/1").should route_to("debts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/debts/1").should route_to("debts#destroy", :id => "1")
    end

  end
end
