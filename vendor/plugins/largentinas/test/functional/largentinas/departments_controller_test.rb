require 'test_helper'

module Largentinas
  class DepartmentsControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
  end
end
