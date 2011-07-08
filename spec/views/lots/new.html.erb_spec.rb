require 'spec_helper'

describe "lots/new.html.erb" do
  before(:each) do
    assign(:lot, stub_model(Lot,
      :manzana => "MyString",
      :loteo => "MyString",
      :parcela => "MyString",
      :partida => "MyString"
    ).as_new_record)
  end

  it "renders new lot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lots_path, :method => "post" do
      assert_select "input#lot_manzana", :name => "lot[manzana]"
      assert_select "input#lot_loteo", :name => "lot[loteo]"
      assert_select "input#lot_parcela", :name => "lot[parcela]"
      assert_select "input#lot_partida", :name => "lot[partida]"
    end
  end
end
