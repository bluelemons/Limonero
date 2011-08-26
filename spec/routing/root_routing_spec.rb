require "spec_helper"

describe ApplicationController do

  it "routes to #routing" do
    get("/").should route_to("lotes#index")
  end

end
