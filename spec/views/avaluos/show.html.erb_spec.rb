require 'spec_helper'

describe "avaluos/show.html.erb" do
  before(:each) do
    @avaluo = assign(:avaluo, stub_model(Avaluo,
      :ncuotas => 1,
      :couta_cents => 1,
      :cuota_currency => "Cuota Currency",
      :interes => "Interes",
      :lot_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cuota Currency/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Interes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
