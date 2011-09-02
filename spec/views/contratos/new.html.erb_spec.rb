require 'spec_helper'

describe "contratos/new.html.erb" do
  before(:each) do
    lote = stub_model(Lote)
    assign(:lote, lote)
    assign(:contrato, stub_model(Contrato,
      :lote => lote
    ).as_new_record)
  end

  it "renders new contrato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :method => "post" do
    end
  end
end
