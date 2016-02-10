require 'test_helper'

class CorpusControllerTest < ActionController::TestCase
  setup do
    @corpu = corpus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corpus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corpu" do
    assert_difference('Corpu.count') do
      post :create, corpu: { building_id: @corpu.building_id, description: @corpu.description, end_date_build: @corpu.end_date_build, name: @corpu.name }
    end

    assert_redirected_to corpu_path(assigns(:corpu))
  end

  test "should show corpu" do
    get :show, id: @corpu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corpu
    assert_response :success
  end

  test "should update corpu" do
    patch :update, id: @corpu, corpu: { building_id: @corpu.building_id, description: @corpu.description, end_date_build: @corpu.end_date_build, name: @corpu.name }
    assert_redirected_to corpu_path(assigns(:corpu))
  end

  test "should destroy corpu" do
    assert_difference('Corpu.count', -1) do
      delete :destroy, id: @corpu
    end

    assert_redirected_to corpus_path
  end
end
