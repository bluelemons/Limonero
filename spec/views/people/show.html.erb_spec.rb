require 'spec_helper'

describe "people/show.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "Name",
      :direccion => "Direccion",
      :localidad => "Localidad"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Direccion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Localidad/)
  end
end
