require 'spec_helper'

describe "taddresses/new.html.erb" do
  before(:each) do
    assign(:taddress, stub_model(Taddress,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new taddress form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => taddresses_path, :method => "post" do
      assert_select "input#taddress_name", :name => "taddress[name]"
    end
  end
end
