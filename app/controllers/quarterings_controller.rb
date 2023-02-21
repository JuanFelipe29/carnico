class QuarteringsController < ApplicationController
  before_action :set_quartering, only: %i[ show edit update destroy ]

  def index
    @quarterings = Quartering.all
  end

  def show; end

  def new
    @quartering = Quartering.new
  end

  def edit; end

  def create
    current_user = User.first
    @quartering = Quartering.new(quartering_params.merge(user: current_user))

    if @quartering.save
      redirect_to quartering_url(@quartering), notice: "Quartering was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @quartering.update(quartering_params)
      redirect_to quartering_url(@quartering), notice: "Quartering was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quartering.destroy

    redirect_to quarterings_url, notice: "Quartering was successfully destroyed."
  end

  private
    def set_quartering
      @quartering = Quartering.find(params[:id])
    end

    def quartering_params
      params.require(:quartering).permit(:channel_id, :lot, :date, :user_id)
    end
end
