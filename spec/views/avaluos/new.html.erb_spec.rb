require 'spec_helper'

describe "avaluos/new.html.erb" do
  before(:each) do
    assign(:avaluo, stub_model(Avaluo,
      :ncuotas => 1,
      :couta_cents => 1,
      :cuota_currency => "MyString",
      :interes => "MyString",
      :lot_id => 1
    ).as_new_record)
  end

  it "renders new avaluo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => avaluos_path, :method => "post" do
      assert_select "input#avaluo_ncuotas", :name => "avaluo[ncuotas]"
      assert_select "input#avaluo_couta_cents", :name => "avaluo[couta_cents]"
      assert_select "input#avaluo_cuota_currency", :name => "avaluo[cuota_currency]"
      assert_select "input#avaluo_interes", :name => "avaluo[interes]"
      assert_select "input#avaluo_lot_id", :name => "avaluo[lot_id]"
    end
  end
end
