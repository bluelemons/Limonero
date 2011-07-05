require 'spec_helper'

describe "lots/index.html.erb" do
  before(:each) do
    assign(:lots, [
      stub_model(Lot,
        :block_id => 1,
        :direccion => "Direccion",
        :superficie => 1,
        :payment_id => 1
      ),
      stub_model(Lot,
        :block_id => 1,
        :direccion => "Direccion",
        :superficie => 1,
        :payment_id => 1
      )
    ])
  end

  it "renders a list of lots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
