class QuarteringsController < ApplicationController
  before_action :set_quartering, only: %i[ show edit update destroy ]

  # GET /quarterings or /quarterings.json
  def index
    @quarterings = Quartering.all
  end

  # GET /quarterings/1 or /quarterings/1.json
  def show
  end

  # GET /quarterings/new
  def new
    @quartering = Quartering.new
  end

  # GET /quarterings/1/edit
  def edit
  end

  # POST /quarterings or /quarterings.json
  def create
    @quartering = Quartering.new(quartering_params)

    respond_to do |format|
      if @quartering.save
        format.html { redirect_to quartering_url(@quartering), notice: "Quartering was successfully created." }
        format.json { render :show, status: :created, location: @quartering }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quartering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quarterings/1 or /quarterings/1.json
  def update
    respond_to do |format|
      if @quartering.update(quartering_params)
        format.html { redirect_to quartering_url(@quartering), notice: "Quartering was successfully updated." }
        format.json { render :show, status: :ok, location: @quartering }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quartering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quarterings/1 or /quarterings/1.json
  def destroy
    @quartering.destroy

    respond_to do |format|
      format.html { redirect_to quarterings_url, notice: "Quartering was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quartering
      @quartering = Quartering.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quartering_params
      params.require(:quartering).permit(:channel_id, :lot, :date, :user_id)
    end
end
