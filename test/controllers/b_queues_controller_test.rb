require 'test_helper'

class BQueuesControllerTest < ActionController::TestCase
  setup do
    @b_queue = b_queues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_queues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_queue" do
    assert_difference('BQueue.count') do
      post :create, b_queue: { building_id: @b_queue.building_id, description: @b_queue.description, end_date_build: @b_queue.end_date_build, name: @b_queue.name }
    end

    assert_redirected_to b_queue_path(assigns(:b_queue))
  end

  test "should show b_queue" do
    get :show, id: @b_queue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_queue
    assert_response :success
  end

  test "should update b_queue" do
    patch :update, id: @b_queue, b_queue: { building_id: @b_queue.building_id, description: @b_queue.description, end_date_build: @b_queue.end_date_build, name: @b_queue.name }
    assert_redirected_to b_queue_path(assigns(:b_queue))
  end

  test "should destroy b_queue" do
    assert_difference('BQueue.count', -1) do
      delete :destroy, id: @b_queue
    end

    assert_redirected_to b_queues_path
  end
end
