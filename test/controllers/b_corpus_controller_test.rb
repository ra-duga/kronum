require 'test_helper'

class BCorpusControllerTest < ActionController::TestCase
  setup do
    @b_corpu = b_corpus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_corpus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_corpu" do
    assert_difference('BCorpu.count') do
      post :create, b_corpu: { b_queues_id: @b_corpu.b_queues_id, description: @b_corpu.description, end_date_build: @b_corpu.end_date_build, name: @b_corpu.name }
    end

    assert_redirected_to b_corpu_path(assigns(:b_corpu))
  end

  test "should show b_corpu" do
    get :show, id: @b_corpu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_corpu
    assert_response :success
  end

  test "should update b_corpu" do
    patch :update, id: @b_corpu, b_corpu: { b_queues_id: @b_corpu.b_queues_id, description: @b_corpu.description, end_date_build: @b_corpu.end_date_build, name: @b_corpu.name }
    assert_redirected_to b_corpu_path(assigns(:b_corpu))
  end

  test "should destroy b_corpu" do
    assert_difference('BCorpu.count', -1) do
      delete :destroy, id: @b_corpu
    end

    assert_redirected_to b_corpus_path
  end
end
