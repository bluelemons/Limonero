require 'spec_helper'

describe "localidads/show.html.erb" do
  before(:each) do
    @localidad = assign(:localidad, stub_model(Localidad))
  end

  it "renders attributes in <p>" do
    render
  end
end
