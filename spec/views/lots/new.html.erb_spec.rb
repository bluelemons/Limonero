require 'spec_helper'

describe "lots/new.html.erb" do
  before(:each) do
    assign(:lot, stub_model(Lot,
      :block_id => 1,
      :direccion => "MyString",
      :superficie => 1,
      :payment_id => 1
    ).as_new_record)
  end

  it "renders new lot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lots_path, :method => "post" do
      assert_select "input#lot_block_id", :name => "lot[block_id]"
      assert_select "input#lot_direccion", :name => "lot[direccion]"
      assert_select "input#lot_superficie", :name => "lot[superficie]"
      assert_select "input#lot_payment_id", :name => "lot[payment_id]"
    end
  end
end
