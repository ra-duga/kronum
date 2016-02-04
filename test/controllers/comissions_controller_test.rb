require 'test_helper'

class ComissionsControllerTest < ActionController::TestCase
  setup do
    @comission = comissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comission" do
    assert_difference('Comission.count') do
      post :create, comission: { agents_id: @comission.agents_id, buildings_id: @comission.buildings_id, comment: @comission.comment, end_epizode: @comission.end_epizode, is_episode: @comission.is_episode, start_epizode: @comission.start_epizode, value: @comission.value }
    end

    assert_redirected_to comission_path(assigns(:comission))
  end

  test "should show comission" do
    get :show, id: @comission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comission
    assert_response :success
  end

  test "should update comission" do
    patch :update, id: @comission, comission: { agents_id: @comission.agents_id, buildings_id: @comission.buildings_id, comment: @comission.comment, end_epizode: @comission.end_epizode, is_episode: @comission.is_episode, start_epizode: @comission.start_epizode, value: @comission.value }
    assert_redirected_to comission_path(assigns(:comission))
  end

  test "should destroy comission" do
    assert_difference('Comission.count', -1) do
      delete :destroy, id: @comission
    end

    assert_redirected_to comissions_path
  end
end
