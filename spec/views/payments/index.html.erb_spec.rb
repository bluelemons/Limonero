require 'spec_helper'

describe "payments/index.html.erb" do
  before(:each) do
    assign(:payments, [
      stub_model(Payment,
        :cuotas => 1,
        :person_id => 1,
        :interes => 1.5
      ),
      stub_model(Payment,
        :cuotas => 1,
        :person_id => 1,
        :interes => 1.5
      )
    ])
  end

  it "renders a list of payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
