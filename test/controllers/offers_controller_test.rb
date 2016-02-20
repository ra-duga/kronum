require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
<<<<<<< HEAD
      post :create, offer: { created_by: @offer.created_by, end_date: @offer.end_date, name: @offer.name, start_date: @offer.start_date, text: @offer.text }
=======
      post :create, offer: { and_date: @offer.and_date, corpus: @offer.corpus, start_date: @offer.start_date, text: @offer.text, title: @offer.title }
>>>>>>> CreateOffers
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
<<<<<<< HEAD
    patch :update, id: @offer, offer: { created_by: @offer.created_by, end_date: @offer.end_date, name: @offer.name, start_date: @offer.start_date, text: @offer.text }
=======
    patch :update, id: @offer, offer: { and_date: @offer.and_date, corpus: @offer.corpus, start_date: @offer.start_date, text: @offer.text, title: @offer.title }
>>>>>>> CreateOffers
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
