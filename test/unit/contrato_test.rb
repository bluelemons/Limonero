require 'test_helper'

class ContratoTest < ActiveSupport::TestCase
  setup do
    @contrato = contratos(:one)
  end

  test "asociaciones" do
    assert_instance_of Lote, @contrato.lote
    @contrato.compradores.each do |comprador|
      assert_instance_of Person, comprador
    end
  end
end
