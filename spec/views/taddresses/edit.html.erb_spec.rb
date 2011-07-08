require 'spec_helper'

describe "taddresses/edit.html.erb" do
  before(:each) do
    @taddress = assign(:taddress, stub_model(Taddress,
      :name => "MyString"
    ))
  end

  it "renders the edit taddress form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => taddresses_path(@taddress), :method => "post" do
      assert_select "input#taddress_name", :name => "taddress[name]"
    end
  end
end
