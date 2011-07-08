require 'spec_helper'

describe "civils/new.html.erb" do
  before(:each) do
    assign(:civil, stub_model(Civil,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new civil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => civils_path, :method => "post" do
      assert_select "input#civil_name", :name => "civil[name]"
    end
  end
end
