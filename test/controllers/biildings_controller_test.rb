require 'test_helper'

class BiildingsControllerTest < ActionController::TestCase
  setup do
    @biilding = biildings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biildings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biilding" do
    assert_difference('Biilding.count') do
      post :create, biilding: { description: @biilding.description, developer_id: @biilding.developer_id, name: @biilding.name }
    end

    assert_redirected_to biilding_path(assigns(:biilding))
  end

  test "should show biilding" do
    get :show, id: @biilding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biilding
    assert_response :success
  end

  test "should update biilding" do
    patch :update, id: @biilding, biilding: { description: @biilding.description, developer_id: @biilding.developer_id, name: @biilding.name }
    assert_redirected_to biilding_path(assigns(:biilding))
  end

  test "should destroy biilding" do
    assert_difference('Biilding.count', -1) do
      delete :destroy, id: @biilding
    end

    assert_redirected_to biildings_path
  end
end
