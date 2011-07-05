require 'spec_helper'

describe "blocks/show.html.erb" do
  before(:each) do
    @block = assign(:block, stub_model(Block,
      :name => "Name",
      :ubicacion => "Ubicacion",
      :superficie => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ubicacion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
