class BodyWeightsController < ApplicationController
  before_action :set_body_weight, only: [:show, :edit, :update, :destroy]

  # GET /body_weights
  # GET /body_weights.json
  def index
    @body_weights = BodyWeight.all
  end

  # GET /body_weights/1
  # GET /body_weights/1.json
  def show
  end

  # GET /body_weights/new
  def new
    @body_weight = BodyWeight.new
  end

  # GET /body_weights/1/edit
  def edit
  end

  # POST /body_weights
  # POST /body_weights.json
  def create
    @body_weight = BodyWeight.new(body_weight_params)

    respond_to do |format|
      if @body_weight.save
        format.html { redirect_to @body_weight, notice: 'Body weight was successfully created.' }
        format.json { render :show, status: :created, location: @body_weight }
      else
        format.html { render :new }
        format.json { render json: @body_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_weights/1
  # PATCH/PUT /body_weights/1.json
  def update
    respond_to do |format|
      if @body_weight.update(body_weight_params)
        format.html { redirect_to @body_weight, notice: 'Body weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @body_weight }
      else
        format.html { render :edit }
        format.json { render json: @body_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_weights/1
  # DELETE /body_weights/1.json
  def destroy
    @body_weight.destroy
    respond_to do |format|
      format.html { redirect_to body_weights_url, notice: 'Body weight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body_weight
      @body_weight = BodyWeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def body_weight_params
      params.require(:body_weight).permit(:weight, :date)
    end
end
