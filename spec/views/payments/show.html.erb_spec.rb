require 'spec_helper'

describe "payments/show.html.erb" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :cuotas => 1,
      :person_id => 1,
      :interes => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
