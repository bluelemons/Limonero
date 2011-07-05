require 'spec_helper'

describe "payments/new.html.erb" do
  before(:each) do
    assign(:payment, stub_model(Payment,
      :cuotas => 1,
      :person_id => 1,
      :interes => 1.5
    ).as_new_record)
  end

  it "renders new payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path, :method => "post" do
      assert_select "input#payment_cuotas", :name => "payment[cuotas]"
      assert_select "input#payment_person_id", :name => "payment[person_id]"
      assert_select "input#payment_interes", :name => "payment[interes]"
    end
  end
end
