class OffersController < ApplicationController

  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  before_action :get_corpus, only: [:new, :show, :edit, :update, :destroy]
  before_action :get_developers, only: [:new, :show, :edit, :update, :destroy]
  before_action :get_buildings, only: [:new, :show, :edit, :update, :destroy]

  before_action :set_title
  add_breadcrumb 'Акции', :offers_path


  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.all
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
    add_breadcrumb "Редактирование #{@offer.name} ", offer_path
    @title = @offer.name
  end

  # GET /offers/new
  def new
    @offer = Offer.new

  end

  # GET /offers/1/edit
  def edit
    add_breadcrumb "Редактирование #{@offer.name} ", edit_offer_path
    @title = @offer.name
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = current_user.id
    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    params[:offer][:corpu_ids] ||= []
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_corpus
    @corpus = Corpu.where("building_id = ?", params[:building_id])
    respond_to do |format|
      format.js
    end


  end

  def set_title
      @title = 'Акции'
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    def get_corpus
      @corpus = Corpu.all
    end

    def get_developers
      @developers = Developer.all
    end

    def get_buildings
      @buildings = Building.all
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:name, :text, :start_date, :end_date, :created_at, corpu_ids: [])
    end
end
