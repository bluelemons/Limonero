require 'spec_helper'

describe "people/new.html.erb" do
  before(:each) do
    assign(:person, stub_model(Person,
      :apellido => "MyString",
      :apellido_materno => "MyString",
      :nombre => "MyString",
      :documento => "MyString",
      :nacionalidad_id => 1,
      :civil_id => 1,
      :observaciones => "MyText"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_apellido", :name => "person[apellido]"
      assert_select "input#person_apellido_materno", :name => "person[apellido_materno]"
      assert_select "input#person_nombre", :name => "person[nombre]"
      assert_select "input#person_documento", :name => "person[documento]"
      assert_select "input#person_nacionalidad_id", :name => "person[nacionalidad_id]"
      assert_select "input#person_civil_id", :name => "person[civil_id]"
      assert_select "textarea#person_observaciones", :name => "person[observaciones]"
    end
  end
end
