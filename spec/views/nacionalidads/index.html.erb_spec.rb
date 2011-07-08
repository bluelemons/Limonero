require 'spec_helper'

describe "nacionalidads/index.html.erb" do
  before(:each) do
    assign(:nacionalidads, [
      stub_model(Nacionalidad,
        :name => "Name"
      ),
      stub_model(Nacionalidad,
        :name => "Name"
      )
    ])
  end

  it "renders a list of nacionalidads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
