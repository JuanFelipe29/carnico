class CutElaboratedsController < ApplicationController
  before_action :set_cut_elaborated, only: %i[ show edit update destroy ]

  # GET /cut_elaborateds or /cut_elaborateds.json
  def index
    @cut_elaborateds = CutElaborated.all
  end

  # GET /cut_elaborateds/1 or /cut_elaborateds/1.json
  def show
  end

  # GET /cut_elaborateds/new
  def new
    @cut_elaborated = CutElaborated.new
  end

  # GET /cut_elaborateds/1/edit
  def edit
  end

  # POST /cut_elaborateds or /cut_elaborateds.json
  def create
    @cut_elaborated = CutElaborated.new(cut_elaborated_params)

    respond_to do |format|
      if @cut_elaborated.save
        format.html { redirect_to cut_elaborated_url(@cut_elaborated), notice: "Cut elaborated was successfully created." }
        format.json { render :show, status: :created, location: @cut_elaborated }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cut_elaborated.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cut_elaborateds/1 or /cut_elaborateds/1.json
  def update
    respond_to do |format|
      if @cut_elaborated.update(cut_elaborated_params)
        format.html { redirect_to cut_elaborated_url(@cut_elaborated), notice: "Cut elaborated was successfully updated." }
        format.json { render :show, status: :ok, location: @cut_elaborated }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cut_elaborated.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cut_elaborateds/1 or /cut_elaborateds/1.json
  def destroy
    @cut_elaborated.destroy

    respond_to do |format|
      format.html { redirect_to cut_elaborateds_url, notice: "Cut elaborated was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cut_elaborated
      @cut_elaborated = CutElaborated.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cut_elaborated_params
      params.require(:cut_elaborated).permit(:cut_id, :elaborated_product_name_id, :description)
    end
end
