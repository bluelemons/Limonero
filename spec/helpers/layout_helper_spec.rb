require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the LotesHelper. For example:
#
# describe LayoutHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe LayoutHelper do
  describe "#error_message(model)" do
    context "si hay un error" do
      let(:model) do
        errors = { :nombre=>"no puede estar en blanco" }
        model = mock_model(Lote)
        model.stub(:errors) { errors }
        model.stub_chain(:errors, :full_messages) { [ "stub" ] }
        model
      end

      it "devuelve un html con el error" do
        helper.error_message(model).should match(/stub/)
      end
    end

    context "si hay un error" do
      let(:model) do
        model = mock_model(Lote)
        model.stub(:errors) { {} }
        model
      end

      it "devuelve un html con el error" do
        helper.error_message(model).should be_nil
      end
    end

  end
end
