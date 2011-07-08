require 'spec_helper'

describe "taddresses/show.html.erb" do
  before(:each) do
    @taddress = assign(:taddress, stub_model(Taddress,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
