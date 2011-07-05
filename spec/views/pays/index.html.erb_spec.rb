require 'spec_helper'

describe "pays/index.html.erb" do
  before(:each) do
    assign(:pays, [
      stub_model(Pay,
        :debt_id => 1,
        :monto_cents => 1,
        :monto_currency => "Monto Currency"
      ),
      stub_model(Pay,
        :debt_id => 1,
        :monto_cents => 1,
        :monto_currency => "Monto Currency"
      )
    ])
  end

  it "renders a list of pays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Monto Currency".to_s, :count => 2
  end
end
