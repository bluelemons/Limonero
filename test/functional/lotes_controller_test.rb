require 'test_helper'

class LotesControllerTest < ActionController::TestCase
  setup do
    @lote = lotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lote" do
    assert_difference('Lote.count') do
      post :create, lote: @lote.attributes
    end

    assert_redirected_to lote_path(assigns(:lote))
  end

  test "should show lote" do
    get :show, id: @lote.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lote.to_param
    assert_response :success
  end

  test "should update lote" do
    put :update, id: @lote.to_param, lote: @lote.attributes
    assert_redirected_to lote_path(assigns(:lote))
  end

  test "should destroy lote" do
    assert_difference('Lote.count', -1) do
      delete :destroy, id: @lote.to_param
    end

    assert_redirected_to lotes_path
  end
end
