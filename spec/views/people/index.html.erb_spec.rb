require 'spec_helper'

describe "people/index.html.erb" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :apellido => "Apellido",
        :apellido_materno => "Apellido Materno",
        :nombre => "Nombre",
        :documento => "Documento",
        :nacionalidad_id => 1,
        :civil_id => 1,
        :observaciones => "MyText"
      ),
      stub_model(Person,
        :apellido => "Apellido",
        :apellido_materno => "Apellido Materno",
        :nombre => "Nombre",
        :documento => "Documento",
        :nacionalidad_id => 1,
        :civil_id => 1,
        :observaciones => "MyText"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Apellido".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Apellido Materno".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Documento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
