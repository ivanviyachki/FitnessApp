class TrainingDaysController < ApplicationController
  before_action :set_training_day, only: [:show, :edit, :update, :destroy]

  # GET /training_days
  # GET /training_days.json
  def index
    @training_days = TrainingDay.all
  end

  # GET /training_days/1
  # GET /training_days/1.json
  def show
    @items = TrainingDay.includes(:exercises, :foods).find(params[:id])
  end

  # GET /training_days/new
  def new
    @training_day = TrainingDay.new
  end

  # GET /training_days/1/edit
  def edit
  end

  # POST /training_days
  # POST /training_days.json
  def create
    @training_day = TrainingDay.new(training_day_params)

    respond_to do |format|
      if @training_day.save
        format.html { redirect_to @training_day, notice: 'Training day was successfully created.' }
        format.json { render :show, status: :created, location: @training_day }
      else
        format.html { render :new }
        format.json { render json: @training_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_days/1
  # PATCH/PUT /training_days/1.json
  def update
    respond_to do |format|
      if @training_day.update(training_day_params)
        format.html { redirect_to @training_day, notice: 'Training day was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_day }
      else
        format.html { render :edit }
        format.json { render json: @training_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_days/1
  # DELETE /training_days/1.json
  def destroy
    @training_day.destroy
    respond_to do |format|
      format.html { redirect_to training_days_url, notice: 'Training day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_day
      @training_day = TrainingDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_day_params
      params.require(:training_day).permit(:exercise_id, :food_id)
    end
end
