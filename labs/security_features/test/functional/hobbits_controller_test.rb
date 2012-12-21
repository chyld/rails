require 'test_helper'

class HobbitsControllerTest < ActionController::TestCase
  setup do
    @hobbit = hobbits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hobbits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hobbit" do
    assert_difference('Hobbit.count') do
      post :create, hobbit: { name: @hobbit.name, role: @hobbit.role }
    end

    assert_redirected_to hobbit_path(assigns(:hobbit))
  end

  test "should show hobbit" do
    get :show, id: @hobbit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hobbit
    assert_response :success
  end

  test "should update hobbit" do
    put :update, id: @hobbit, hobbit: { name: @hobbit.name, role: @hobbit.role }
    assert_redirected_to hobbit_path(assigns(:hobbit))
  end

  test "should destroy hobbit" do
    assert_difference('Hobbit.count', -1) do
      delete :destroy, id: @hobbit
    end

    assert_redirected_to hobbits_path
  end
end
