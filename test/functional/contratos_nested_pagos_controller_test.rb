require 'test_helper'

class ContratosNestedPagosControllerTest < ActionController::TestCase
  tests PagosController

  setup do
    @contrato = contratos(:one)
  end

  test "should get new" do
    get :new, :contrato_id => @contrato.to_param
    assert_response :success
  end
end
