require "spec_helper"

describe AvaluosController do
  describe "routing" do

    it "routes to #new" do
      get("/lotes/1/avaluo/new").should route_to("avaluos#new", :lote_id => "1")
    end

    it "routes to #show" do
      get("/lotes/1/avaluo").should route_to("avaluos#show", :lote_id => "1")
    end

    it "routes to #edit" do
      get("/lotes/1/avaluo/edit").should route_to("avaluos#edit", :lote_id => "1")
    end

    it "routes to #create" do
      post("/lotes/1/avaluo").should route_to("avaluos#create", :lote_id => "1")
    end

    it "routes to #update" do
      put("/lotes/1/avaluo").should route_to("avaluos#update", :lote_id => "1")
    end

    it "routes to #destroy" do
      delete("/lotes/1/avaluo").should route_to("avaluos#destroy", :lote_id => "1")
    end

  end
end
