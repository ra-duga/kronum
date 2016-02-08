class BCorpusController < ApplicationController
  before_action :set_b_corpu, only: [:show, :edit, :update, :destroy]

  # GET /b_corpus
  # GET /b_corpus.json
  def index
    @b_corpus = BCorpu.all
  end

  # GET /b_corpus/1
  # GET /b_corpus/1.json
  def show
  end

  # GET /b_corpus/new
  def new
    @b_corpu = BCorpu.new
  end

  # GET /b_corpus/1/edit
  def edit
  end

  # POST /b_corpus
  # POST /b_corpus.json
  def create
    @b_corpu = BCorpu.new(b_corpu_params)

    respond_to do |format|
      if @b_corpu.save
        format.html { redirect_to @b_corpu, notice: 'B corpu was successfully created.' }
        format.json { render :show, status: :created, location: @b_corpu }
      else
        format.html { render :new }
        format.json { render json: @b_corpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_corpus/1
  # PATCH/PUT /b_corpus/1.json
  def update
    respond_to do |format|
      if @b_corpu.update(b_corpu_params)
        format.html { redirect_to @b_corpu, notice: 'B corpu was successfully updated.' }
        format.json { render :show, status: :ok, location: @b_corpu }
      else
        format.html { render :edit }
        format.json { render json: @b_corpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_corpus/1
  # DELETE /b_corpus/1.json
  def destroy
    @b_corpu.destroy
    respond_to do |format|
      format.html { redirect_to b_corpus_url, notice: 'B corpu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_corpu
      @b_corpu = BCorpu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def b_corpu_params
      params.require(:b_corpu).permit(:name, :description, :end_date_build, :b_queues_id)
    end
end
