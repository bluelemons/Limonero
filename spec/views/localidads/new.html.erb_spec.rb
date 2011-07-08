require 'spec_helper'

describe "localidads/new.html.erb" do
  before(:each) do
    assign(:localidad, stub_model(Localidad).as_new_record)
  end

  it "renders new localidad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => localidads_path, :method => "post" do
    end
  end
end
