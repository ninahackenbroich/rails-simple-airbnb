class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end
  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    redirect_to flat_path(@flat)
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    @flats = Flat.all
    redirect_to flats_path(@flats)
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end

end
