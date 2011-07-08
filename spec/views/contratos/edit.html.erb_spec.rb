require 'spec_helper'

describe "contratos/edit.html.erb" do
  before(:each) do
    @contrato = assign(:contrato, stub_model(Contrato,
      :payment_id => 1,
      :person_id => 1
    ))
  end

  it "renders the edit contrato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contratos_path(@contrato), :method => "post" do
      assert_select "input#contrato_payment_id", :name => "contrato[payment_id]"
      assert_select "input#contrato_person_id", :name => "contrato[person_id]"
    end
  end
end
