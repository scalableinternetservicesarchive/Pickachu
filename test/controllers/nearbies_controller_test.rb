require 'test_helper'

class NearbiesControllerTest < ActionController::TestCase
  setup do
    @nearby = nearbies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nearbies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nearby" do
    assert_difference('Nearby.count') do
      post :create, nearby: {  }
    end

    assert_redirected_to nearby_path(assigns(:nearby))
  end

  test "should show nearby" do
    get :show, id: @nearby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nearby
    assert_response :success
  end

  test "should update nearby" do
    patch :update, id: @nearby, nearby: {  }
    assert_redirected_to nearby_path(assigns(:nearby))
  end

  test "should destroy nearby" do
    assert_difference('Nearby.count', -1) do
      delete :destroy, id: @nearby
    end

    assert_redirected_to nearbies_path
  end
end
