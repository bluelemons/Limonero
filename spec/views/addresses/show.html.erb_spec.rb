require 'spec_helper'

describe "addresses/show.html.erb" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :calle => "Calle",
      :numero => "Numero",
      :otro => "Otro",
      :telefono => "Telefono",
      :person_id => 1,
      :taddress_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Calle/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Otro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefono/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
