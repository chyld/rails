require 'test_helper'

class ComputationsControllerTest < ActionController::TestCase
  setup do
    @computation = computations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computation" do
    assert_difference('Computation.count') do
      post :create, computation: { name: @computation.name, result: @computation.result }
    end

    assert_redirected_to computation_path(assigns(:computation))
  end

  test "should show computation" do
    get :show, id: @computation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computation
    assert_response :success
  end

  test "should update computation" do
    put :update, id: @computation, computation: { name: @computation.name, result: @computation.result }
    assert_redirected_to computation_path(assigns(:computation))
  end

  test "should destroy computation" do
    assert_difference('Computation.count', -1) do
      delete :destroy, id: @computation
    end

    assert_redirected_to computations_path
  end
end
