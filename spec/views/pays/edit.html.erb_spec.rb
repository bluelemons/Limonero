require 'spec_helper'

describe "pays/edit.html.erb" do
  before(:each) do
    @pay = assign(:pay, stub_model(Pay,
      :debt_id => 1,
      :monto_cents => 1,
      :monto_currency => "MyString"
    ))
  end

  it "renders the edit pay form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pays_path(@pay), :method => "post" do
      assert_select "input#pay_debt_id", :name => "pay[debt_id]"
      assert_select "input#pay_monto_cents", :name => "pay[monto_cents]"
      assert_select "input#pay_monto_currency", :name => "pay[monto_currency]"
    end
  end
end
