require 'test_helper'

class OfferCategoriesControllerTest < ActionController::TestCase
  setup do
    @offer_category = offer_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offer_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer_category" do
    assert_difference('OfferCategory.count') do
      post :create, offer_category: { name: @offer_category.name, offer_id: @offer_category.offer_id }
    end

    assert_redirected_to offer_category_path(assigns(:offer_category))
  end

  test "should show offer_category" do
    get :show, id: @offer_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer_category
    assert_response :success
  end

  test "should update offer_category" do
    patch :update, id: @offer_category, offer_category: { name: @offer_category.name, offer_id: @offer_category.offer_id }
    assert_redirected_to offer_category_path(assigns(:offer_category))
  end

  test "should destroy offer_category" do
    assert_difference('OfferCategory.count', -1) do
      delete :destroy, id: @offer_category
    end

    assert_redirected_to offer_categories_path
  end
end
