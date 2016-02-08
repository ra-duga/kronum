class BQueuesController < ApplicationController
  before_action :set_b_queue, only: [:show, :edit, :update, :destroy]

  # GET /b_queues
  # GET /b_queues.json
  def index
    @b_queues = BQueue.all
  end

  # GET /b_queues/1
  # GET /b_queues/1.json
  def show
  end

  # GET /b_queues/new
  def new
    @b_queue = BQueue.new
  end

  # GET /b_queues/1/edit
  def edit
  end

  # POST /b_queues
  # POST /b_queues.json
  def create
    @b_queue = BQueue.new(b_queue_params)

    respond_to do |format|
      if @b_queue.save
        format.html { redirect_to @b_queue, notice: 'B queue was successfully created.' }
        format.json { render :show, status: :created, location: @b_queue }
      else
        format.html { render :new }
        format.json { render json: @b_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_queues/1
  # PATCH/PUT /b_queues/1.json
  def update
    respond_to do |format|
      if @b_queue.update(b_queue_params)
        format.html { redirect_to @b_queue, notice: 'B queue was successfully updated.' }
        format.json { render :show, status: :ok, location: @b_queue }
      else
        format.html { render :edit }
        format.json { render json: @b_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_queues/1
  # DELETE /b_queues/1.json
  def destroy
    @b_queue.destroy
    respond_to do |format|
      format.html { redirect_to b_queues_url, notice: 'B queue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_queue
      @b_queue = BQueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def b_queue_params
      params.require(:b_queue).permit(:name, :description, :end_date_build, :building_id)
    end
end
