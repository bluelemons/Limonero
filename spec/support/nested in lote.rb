require 'spec_helper'

shared_context "it is nested in lote" do

  before(:all) do
    @lote = Factory(:lote)
  end

  after(:all) do
    @lote.destroy
  end

end
