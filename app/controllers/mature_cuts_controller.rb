class MatureCutsController < ApplicationController
  before_action :set_mature_cut, only: %i[ show edit update destroy ]

  # GET /mature_cuts or /mature_cuts.json
  def index
    @mature_cuts = MatureCut.all
  end

  # GET /mature_cuts/1 or /mature_cuts/1.json
  def show
  end

  # GET /mature_cuts/new
  def new
    @mature_cut = MatureCut.new
  end

  # GET /mature_cuts/1/edit
  def edit
  end

  # POST /mature_cuts or /mature_cuts.json
  def create
    @mature_cut = MatureCut.new(mature_cut_params)

    respond_to do |format|
      if @mature_cut.save
        format.html { redirect_to mature_cut_url(@mature_cut), notice: "Mature cut was successfully created." }
        format.json { render :show, status: :created, location: @mature_cut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mature_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mature_cuts/1 or /mature_cuts/1.json
  def update
    respond_to do |format|
      if @mature_cut.update(mature_cut_params)
        format.html { redirect_to mature_cut_url(@mature_cut), notice: "Mature cut was successfully updated." }
        format.json { render :show, status: :ok, location: @mature_cut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mature_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mature_cuts/1 or /mature_cuts/1.json
  def destroy
    @mature_cut.destroy

    respond_to do |format|
      format.html { redirect_to mature_cuts_url, notice: "Mature cut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mature_cut
      @mature_cut = MatureCut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mature_cut_params
      params.require(:mature_cut).permit(:cut_id, :start_date, :end_date, :final_weight)
    end
end
