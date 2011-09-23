require 'test_helper'

class LoteosControllerTest < ActionController::TestCase
  setup do
    @loteo = loteos(:adelina)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loteos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loteo" do
    assert_difference('Loteo.count') do
      post :create, loteo: @loteo.attributes
    end

    assert_redirected_to loteo_path(assigns(:loteo))
  end

  test "should show loteo" do
    get :show, id: @loteo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loteo.to_param
    assert_response :success
  end

  test "should update loteo" do
    put :update, id: @loteo.to_param, loteo: @loteo.attributes
    assert_redirected_to loteo_path(assigns(:loteo))
  end

  test "should destroy loteo" do
    assert_difference('Loteo.count', -1) do
      delete :destroy, id: @loteo.to_param
    end

    assert_redirected_to loteos_path
  end
end
