# coding: utf-8
require 'spec_helper'

describe "lots/show.html.erb" do
  before(:each) do
    @lot = assign(:lot, stub_model(Lot,
      :manzana => "Manzana",
      :loteo => "Loteo",
      :parcela => "Parcela",
      :partida => "Partida"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Manzana/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Loteo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parcela/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Partida/)
  end

  it "renders a button for create/modify the avaluo" do
    render
    rendered.should match(/avalúo/)
  end
end
