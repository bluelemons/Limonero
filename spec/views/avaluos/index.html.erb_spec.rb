require 'spec_helper'

describe "avaluos/index.html.erb" do
  before(:each) do
    assign(:avaluos, [
      stub_model(Avaluo,
        :ncuotas => 1,
        :couta_cents => 1,
        :cuota_currency => "Cuota Currency",
        :interes => "Interes",
        :lot_id => 1
      ),
      stub_model(Avaluo,
        :ncuotas => 1,
        :couta_cents => 1,
        :cuota_currency => "Cuota Currency",
        :interes => "Interes",
        :lot_id => 1
      )
    ])
  end

  it "renders a list of avaluos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cuota Currency".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Interes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
