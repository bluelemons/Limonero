require 'spec_helper'

describe "localidads/index.html.erb" do
  before(:each) do
    assign(:localidads, [
      stub_model(Localidad),
      stub_model(Localidad)
    ])
  end

  it "renders a list of localidads" do
    render
  end
end
