require 'test_helper'

class DowsControllerTest < ActionController::TestCase
  setup do
    @dow = dows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dow" do
    assert_difference('Dow.count') do
      post :create, dow: { day: @dow.day, specialid: @dow.specialid }
    end

    assert_redirected_to dow_path(assigns(:dow))
  end

  test "should show dow" do
    get :show, id: @dow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dow
    assert_response :success
  end

  test "should update dow" do
    patch :update, id: @dow, dow: { day: @dow.day, specialid: @dow.specialid }
    assert_redirected_to dow_path(assigns(:dow))
  end

  test "should destroy dow" do
    assert_difference('Dow.count', -1) do
      delete :destroy, id: @dow
    end

    assert_redirected_to dows_path
  end
end
