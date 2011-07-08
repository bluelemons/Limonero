require 'spec_helper'

describe "lots/index.html.erb" do
  before(:each) do
    assign(:lots, [
      stub_model(Lot,
        :manzana => "Manzana",
        :loteo => "Loteo",
        :parcela => "Parcela",
        :partida => "Partida"
      ),
      stub_model(Lot,
        :manzana => "Manzana",
        :loteo => "Loteo",
        :parcela => "Parcela",
        :partida => "Partida"
      )
    ])
  end

  it "renders a list of lots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Manzana".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Loteo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parcela".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Partida".to_s, :count => 2
  end
end
