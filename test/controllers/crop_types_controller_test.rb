require 'test_helper'

class CropTypesControllerTest < ActionController::TestCase
  setup do
    @crop_type = crop_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crop_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crop_type" do
    assert_difference('CropType.count') do
      post :create, crop_type: { type: @crop_type.type }
    end

    assert_redirected_to crop_type_path(assigns(:crop_type))
  end

  test "should show crop_type" do
    get :show, id: @crop_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crop_type
    assert_response :success
  end

  test "should update crop_type" do
    patch :update, id: @crop_type, crop_type: { type: @crop_type.type }
    assert_redirected_to crop_type_path(assigns(:crop_type))
  end

  test "should destroy crop_type" do
    assert_difference('CropType.count', -1) do
      delete :destroy, id: @crop_type
    end

    assert_redirected_to crop_types_path
  end
end
