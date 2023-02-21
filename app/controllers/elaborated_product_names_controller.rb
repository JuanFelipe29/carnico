class ElaboratedProductNamesController < ApplicationController
  before_action :set_elaborated_product_name, only: %i[ show edit update destroy ]

  # GET /elaborated_product_names or /elaborated_product_names.json
  def index
    @elaborated_product_names = ElaboratedProductName.all
  end

  # GET /elaborated_product_names/1 or /elaborated_product_names/1.json
  def show
  end

  # GET /elaborated_product_names/new
  def new
    @elaborated_product_name = ElaboratedProductName.new(cut_id: params[:cut_id])
  end

  # GET /elaborated_product_names/1/edit
  def edit
  end

  # POST /elaborated_product_names or /elaborated_product_names.json
  def create
    @elaborated_product_name = ElaboratedProductName.new(elaborated_product_name_params)

    respond_to do |format|
      if @elaborated_product_name.save
        format.html { redirect_to elaborated_product_name_url(@elaborated_product_name), notice: "Elaborated product name was successfully created." }
        format.json { render :show, status: :created, location: @elaborated_product_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elaborated_product_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elaborated_product_names/1 or /elaborated_product_names/1.json
  def update
    respond_to do |format|
      if @elaborated_product_name.update(elaborated_product_name_params)
        format.html { redirect_to elaborated_product_name_url(@elaborated_product_name), notice: "Elaborated product name was successfully updated." }
        format.json { render :show, status: :ok, location: @elaborated_product_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elaborated_product_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elaborated_product_names/1 or /elaborated_product_names/1.json
  def destroy
    @elaborated_product_name.destroy

    respond_to do |format|
      format.html { redirect_to elaborated_product_names_url, notice: "Elaborated product name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elaborated_product_name
      @elaborated_product_name = ElaboratedProductName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elaborated_product_name_params
      params.require(:elaborated_product_name).permit(:name)
    end
end
