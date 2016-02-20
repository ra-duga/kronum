class MainOffersController < ApplicationController
  skip_before_filter :authenticate_user!

  layout "public", only: [:index]


  def index
    @offers = Offer.all
  end
end
