require 'spec_helper'

describe "people/new.html.erb" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "MyString",
      :direccion => "MyString",
      :localidad => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_direccion", :name => "person[direccion]"
      assert_select "input#person_localidad", :name => "person[localidad]"
    end
  end
end
