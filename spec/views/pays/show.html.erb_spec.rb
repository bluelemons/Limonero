require 'spec_helper'

describe "pays/show.html.erb" do
  before(:each) do
    @pay = assign(:pay, stub_model(Pay,
      :debt_id => 1,
      :monto_cents => 1,
      :monto_currency => "Monto Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Monto Currency/)
  end
end
