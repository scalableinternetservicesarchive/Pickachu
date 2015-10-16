require 'test_helper'

class PickupsControllerTest < ActionController::TestCase
  setup do
    @pickup = pickups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup" do
    assert_difference('Pickup.count') do
      post :create, pickup: { description: @pickup.description, end_time: @pickup.end_time, image_url: @pickup.image_url, lat: @pickup.lat, long: @pickup.long, name: @pickup.name, price: @pickup.price, start_time: @pickup.start_time, type: @pickup.type, uid: @pickup.uid }
    end

    assert_redirected_to pickup_path(assigns(:pickup))
  end

  test "should show pickup" do
    get :show, id: @pickup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup
    assert_response :success
  end

  test "should update pickup" do
    patch :update, id: @pickup, pickup: { description: @pickup.description, end_time: @pickup.end_time, image_url: @pickup.image_url, lat: @pickup.lat, long: @pickup.long, name: @pickup.name, price: @pickup.price, start_time: @pickup.start_time, type: @pickup.type, uid: @pickup.uid }
    assert_redirected_to pickup_path(assigns(:pickup))
  end

  test "should destroy pickup" do
    assert_difference('Pickup.count', -1) do
      delete :destroy, id: @pickup
    end

    assert_redirected_to pickups_path
  end
end
