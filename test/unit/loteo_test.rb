require 'test_helper'

class LoteoTest < ActiveSupport::TestCase
  setup do
    @loteo = loteos(:adelina)
  end

  test "asociaciones" do
    @loteo.lotes.each do |lote|
      assert_instance_of Lote, lote, "#{lote} no es un Lote"
    end
  end
end
