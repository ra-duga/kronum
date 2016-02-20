class CorpusController < ApplicationController
  before_action :set_corpu, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  add_breadcrumb 'Корпуса', :corpus_path

  has_scope :by_offer, :all_by_corpus

  # GET /corpus
  # GET /corpus.json
  def index
    @corpus = apply_scopes(Corpu).paginate(:per_page => 3, :page => 1)
  end

  # GET /corpus/1
  # GET /corpus/1.json
  def show
    add_breadcrumb @corpu.name, corpu_path
    @title = @corpu.name
  end


  # GET /corpus/new
  def new
    @corpu = Corpu.new
    @title = 'Создание корупса'
  end

  # GET /corpus/1/edit
  def edit

  end

  # POST /corpus
  # POST /corpus.json
  def create
    @corpu = Corpu.new(corpu_params)
    respond_to do |format|
      if @corpu.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @corpu.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corpus/1
  # PATCH/PUT /corpus/1.json
  def update
    respond_to do |format|
      if @corpu.update(corpu_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @corpu.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corpus/1
  # DELETE /corpus/1.json
  def destroy
    @corpu.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to building_url }
      format.json { head :no_content }
    end
  end

  def set_title
    @title = 'Корпусы'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corpu
      @corpu = Corpu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corpu_params
      params.require(:corpu).permit(:name, :description, :end_date_build, :building_id)
    end
end
