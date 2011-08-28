require 'spec_helper'

describe "avaluos/show.html.erb" do

  include_context "it is nested in lote"

  before(:each) do
    @avaluo = assign(:avaluo, stub_model(Avaluo,
      :ncuotas => 1,
      :cuota_cents => 1,
      :cuota_inicial => 1,
      :cuota_currency => "Cuota Currency",
      :interes => 1.5,
      :lote_id => 1,
      :observaciones => "MyText",
      :lote => @lote
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
