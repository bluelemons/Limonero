require 'spec_helper'

describe "nacionalidads/show.html.erb" do
  before(:each) do
    @nacionalidad = assign(:nacionalidad, stub_model(Nacionalidad,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
