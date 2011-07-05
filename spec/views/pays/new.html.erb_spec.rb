require 'spec_helper'

describe "pays/new.html.erb" do
  before(:each) do
    assign(:pay, stub_model(Pay,
      :debt_id => 1,
      :monto_cents => 1,
      :monto_currency => "MyString"
    ).as_new_record)
  end

  it "renders new pay form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pays_path, :method => "post" do
      assert_select "input#pay_debt_id", :name => "pay[debt_id]"
      assert_select "input#pay_monto_cents", :name => "pay[monto_cents]"
      assert_select "input#pay_monto_currency", :name => "pay[monto_currency]"
    end
  end
end
