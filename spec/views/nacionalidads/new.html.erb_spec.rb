require 'spec_helper'

describe "nacionalidads/new.html.erb" do
  before(:each) do
    assign(:nacionalidad, stub_model(Nacionalidad,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new nacionalidad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nacionalidads_path, :method => "post" do
      assert_select "input#nacionalidad_name", :name => "nacionalidad[name]"
    end
  end
end
