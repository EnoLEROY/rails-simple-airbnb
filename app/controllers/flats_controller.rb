class FlatsController < ApplicationController
  before_action :set_flats, only: %i[index show]

  def index
  end

  def show
    @flat = @flats.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_flats
    @flats = Flat.all
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
