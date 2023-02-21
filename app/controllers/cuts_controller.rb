class CutsController < ApplicationController
  before_action :set_cut, only: %i[ show edit update destroy ]

  def index
    @cuts = Cut.all
  end

  def show; end

  def new
    @cut = Cut.new
  end

  def edit; end

  def create
    @cut = Cut.new(cut_params)

    if @cut.save
      redirect_to cut_url(@cut), notice: "Cut was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @cut.update(cut_params)
      redirect_to cut_url(@cut), notice: "Cut was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @cut.destroy

    redirect_to cuts_url, notice: "Cut was successfully destroyed."
  end

  private

    def set_cut
      @cut = Cut.find(params[:id])
    end

    def cut_params
      params.require(:cut).permit(:piece_id, :cut_name_id, :weight, :final_weight, :processing_type)
    end
end
