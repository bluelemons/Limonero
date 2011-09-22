require 'test_helper'

class LoteTest < ActiveSupport::TestCase
  setup do
    @lote = lotes(:one)
  end

  test "asociaciones" do
    assert_instance_of Loteo, @lote.loteo
    assert_instance_of Contrato, @lote.contrato
  end
end
