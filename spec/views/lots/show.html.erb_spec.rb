require 'spec_helper'

describe "lots/show.html.erb" do
  before(:each) do
    @lot = assign(:lot, stub_model(Lot,
      :block_id => 1,
      :direccion => "Direccion",
      :superficie => 1,
      :payment_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Direccion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
