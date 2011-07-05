require 'spec_helper'

describe "debts/edit.html.erb" do
  before(:each) do
    @debt = assign(:debt, stub_model(Debt,
      :payment_id => 1,
      :monto_cents => 1,
      :monto_currency => "MyString"
    ))
  end

  it "renders the edit debt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => debts_path(@debt), :method => "post" do
      assert_select "input#debt_payment_id", :name => "debt[payment_id]"
      assert_select "input#debt_monto_cents", :name => "debt[monto_cents]"
      assert_select "input#debt_monto_currency", :name => "debt[monto_currency]"
    end
  end
end
