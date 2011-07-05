require 'spec_helper'

describe "people/index.html.erb" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "Name",
        :direccion => "Direccion",
        :localidad => "Localidad"
      ),
      stub_model(Person,
        :name => "Name",
        :direccion => "Direccion",
        :localidad => "Localidad"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Localidad".to_s, :count => 2
  end
end
