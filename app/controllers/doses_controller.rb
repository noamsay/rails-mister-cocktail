class DosesController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail.id)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
