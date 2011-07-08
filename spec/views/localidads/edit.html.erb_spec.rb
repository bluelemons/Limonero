require 'spec_helper'

describe "localidads/edit.html.erb" do
  before(:each) do
    @localidad = assign(:localidad, stub_model(Localidad))
  end

  it "renders the edit localidad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => localidads_path(@localidad), :method => "post" do
    end
  end
end
