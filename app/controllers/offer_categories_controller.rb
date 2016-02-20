class OfferCategoriesController < ApplicationController
  before_action :set_offer_category, only: [:show, :edit, :update, :destroy]

  # GET /offer_categories
  # GET /offer_categories.json
  def index
    @offer_categories = OfferCategory.all
  end

  # GET /offer_categories/1
  # GET /offer_categories/1.json
  def show
  end

  # GET /offer_categories/new
  def new
    @offer_category = OfferCategory.new
  end

  # GET /offer_categories/1/edit
  def edit
  end

  # POST /offer_categories
  # POST /offer_categories.json
  def create
    @offer_category = OfferCategory.new(offer_category_params)

    respond_to do |format|
      if @offer_category.save
        format.html { redirect_to @offer_category, notice: 'Offer category was successfully created.' }
        format.json { render :show, status: :created, location: @offer_category }
      else
        format.html { render :new }
        format.json { render json: @offer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_categories/1
  # PATCH/PUT /offer_categories/1.json
  def update
    respond_to do |format|
      if @offer_category.update(offer_category_params)
        format.html { redirect_to @offer_category, notice: 'Offer category was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer_category }
      else
        format.html { render :edit }
        format.json { render json: @offer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_categories/1
  # DELETE /offer_categories/1.json
  def destroy
    @offer_category.destroy
    respond_to do |format|
      format.html { redirect_to offer_categories_url, notice: 'Offer category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_category
      @offer_category = OfferCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_category_params
      params.require(:offer_category).permit(:name, :offer_id)
    end
end
