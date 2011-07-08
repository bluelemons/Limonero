require 'spec_helper'

describe "nacionalidads/edit.html.erb" do
  before(:each) do
    @nacionalidad = assign(:nacionalidad, stub_model(Nacionalidad,
      :name => "MyString"
    ))
  end

  it "renders the edit nacionalidad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nacionalidads_path(@nacionalidad), :method => "post" do
      assert_select "input#nacionalidad_name", :name => "nacionalidad[name]"
    end
  end
end
