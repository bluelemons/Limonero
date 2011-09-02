require "spec_helper"

describe ContratosController do
  describe "routing" do

    it "routes to #index" do
      get("/contratos").should route_to("contratos#index")
    end

    it "routes to #new" do
      get("/lotes/1/contrato/new").should route_to("contratos#new", :lote_id => "1")
    end

    it "routes to #show" do
      get("/lotes/1/contrato").should route_to("contratos#show", :lote_id => "1")
    end

    it "routes to #edit" do
      get("/lotes/1/contrato/edit").should route_to("contratos#edit", :lote_id => "1")
    end

    it "routes to #create" do
      post("/lotes/1/contrato").should route_to("contratos#create", :lote_id => "1")
    end

    it "routes to #update" do
      put("/lotes/1/contrato").should route_to("contratos#update", :lote_id => "1")
    end

    it "routes to #destroy" do
      delete("/lotes/1/contrato").should route_to("contratos#destroy", :lote_id => "1")
    end

  end
end
