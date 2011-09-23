require 'test_helper'

class PagoTest < ActiveSupport::TestCase
  setup do
    @pago = pagos(:julio)
  end

  test "asociaciones" do
    assert_instance_of Contrato, @pago.contrato
  end
end
