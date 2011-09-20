require 'spec_helper'

describe "pagos/new.html.erb" do
  before(:each) do
    assign(:pago, stub_model(Pago,
      :monto => "9.99",
      :recargo => "9.99",
      :tasa => "9.99",
      :otro => "9.99",
      :api => "9.99",
      :contrato_id => 1
    ).as_new_record)
  end

  it "renders new pago form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pagos_path, :method => "post" do
      assert_select "input#pago_monto", :name => "pago[monto]"
      assert_select "input#pago_recargo", :name => "pago[recargo]"
      assert_select "input#pago_tasa", :name => "pago[tasa]"
      assert_select "input#pago_otro", :name => "pago[otro]"
      assert_select "input#pago_api", :name => "pago[api]"
      assert_select "input#pago_contrato_id", :name => "pago[contrato_id]"
    end
  end
end
