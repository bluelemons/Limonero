require 'test_helper'

class LotesNestedContratoControllerTest < ActionController::TestCase
  tests ContratosController

  setup do
    @lote = lotes(:one)
    @lote_sin_vender = lotes(:two)
    @contrato = contratos(:one)
  end

  test "routes" do
    assert_routing({:path => "/lotes/1/contrato/new"},
      { :controller => "contratos", :action => "new", :lote_id => "1" })
  end

  test "should get new" do
    get :new, :lote_id => @lote_sin_vender.to_param
    assert_response :success
  end

  test "should create contrato" do
    assert_difference('Contrato.count') do
      post :create, :contrato => @contrato.attributes, :lote_id => @lote.to_param
    end

    assert_redirected_to lote_contrato_path(assigns(:lote))
  end

  test "should show contrato" do
    get :show, :lote_id => @lote.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :lote_id => @lote.to_param
    assert_response :success
  end

  test "should update contrato" do
    put :update, :lote_id => @lote.to_param, :contrato => @contrato.attributes
    assert_redirected_to lote_contrato_path(assigns(:lote))
  end

  test "should destroy contrato" do
    assert_difference('Contrato.count', -1) do
      delete :destroy, :lote_id => @lote.to_param
    end

    assert_redirected_to lote_path(@lote)
  end
end
