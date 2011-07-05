require 'spec_helper'

describe "payments/edit.html.erb" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :cuotas => 1,
      :person_id => 1,
      :interes => 1.5
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path(@payment), :method => "post" do
      assert_select "input#payment_cuotas", :name => "payment[cuotas]"
      assert_select "input#payment_person_id", :name => "payment[person_id]"
      assert_select "input#payment_interes", :name => "payment[interes]"
    end
  end
end
