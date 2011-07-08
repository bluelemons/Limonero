require 'spec_helper'

describe "contratos/show.html.erb" do
  before(:each) do
    @contrato = assign(:contrato, stub_model(Contrato,
      :payment_id => 1,
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
