require 'test_helper'

class VacationsControllerTest < ActionController::TestCase
  setup do
    @vacation = vacations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacation" do
    assert_difference('Vacation.count') do
      post :create, vacation: { lat: @vacation.lat, long: @vacation.long, name: @vacation.name, zoom: @vacation.zoom }
    end

    assert_redirected_to vacation_path(assigns(:vacation))
  end

  test "should show vacation" do
    get :show, id: @vacation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacation
    assert_response :success
  end

  test "should update vacation" do
    put :update, id: @vacation, vacation: { lat: @vacation.lat, long: @vacation.long, name: @vacation.name, zoom: @vacation.zoom }
    assert_redirected_to vacation_path(assigns(:vacation))
  end

  test "should destroy vacation" do
    assert_difference('Vacation.count', -1) do
      delete :destroy, id: @vacation
    end

    assert_redirected_to vacations_path
  end
end
