require 'spec_helper'

describe "civils/edit.html.erb" do
  before(:each) do
    @civil = assign(:civil, stub_model(Civil,
      :name => "MyString"
    ))
  end

  it "renders the edit civil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => civils_path(@civil), :method => "post" do
      assert_select "input#civil_name", :name => "civil[name]"
    end
  end
end
