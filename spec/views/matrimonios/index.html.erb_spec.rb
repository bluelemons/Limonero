require 'spec_helper'

describe "matrimonios/index.html.erb" do
  before(:each) do
    assign(:matrimonios, [
      stub_model(Matrimonio,
        :person_id => 1,
        :person_id1 => 1
      ),
      stub_model(Matrimonio,
        :person_id => 1,
        :person_id1 => 1
      )
    ])
  end

  it "renders a list of matrimonios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
