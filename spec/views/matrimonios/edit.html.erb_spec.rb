require 'spec_helper'

describe "matrimonios/edit.html.erb" do
  before(:each) do
    @matrimonio = assign(:matrimonio, stub_model(Matrimonio,
      :person_id => 1,
      :person_id1 => 1
    ))
  end

  it "renders the edit matrimonio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matrimonios_path(@matrimonio), :method => "post" do
      assert_select "input#matrimonio_person_id", :name => "matrimonio[person_id]"
      assert_select "input#matrimonio_person_id1", :name => "matrimonio[person_id1]"
    end
  end
end
