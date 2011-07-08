require 'spec_helper'

describe "addresses/edit.html.erb" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :calle => "MyString",
      :numero => "MyString",
      :otro => "MyString",
      :telefono => "MyString",
      :person_id => 1,
      :taddress_id => 1
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addresses_path(@address), :method => "post" do
      assert_select "input#address_calle", :name => "address[calle]"
      assert_select "input#address_numero", :name => "address[numero]"
      assert_select "input#address_otro", :name => "address[otro]"
      assert_select "input#address_telefono", :name => "address[telefono]"
      assert_select "input#address_person_id", :name => "address[person_id]"
      assert_select "input#address_taddress_id", :name => "address[taddress_id]"
    end
  end
end
