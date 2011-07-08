require 'spec_helper'

describe "civils/index.html.erb" do
  before(:each) do
    assign(:civils, [
      stub_model(Civil,
        :name => "Name"
      ),
      stub_model(Civil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of civils" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
