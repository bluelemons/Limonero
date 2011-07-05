require 'spec_helper'

describe "blocks/index.html.erb" do
  before(:each) do
    assign(:blocks, [
      stub_model(Block,
        :name => "Name",
        :ubicacion => "Ubicacion",
        :superficie => 1
      ),
      stub_model(Block,
        :name => "Name",
        :ubicacion => "Ubicacion",
        :superficie => 1
      )
    ])
  end

  it "renders a list of blocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ubicacion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
