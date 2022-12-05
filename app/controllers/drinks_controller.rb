class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @wines = Drink.where(category_id: 1)
    @beers = Drink.where(category_id: 2)
    @spirits = Drink.where(category_id: 3)
    @cocktails = Drink.where(category_id: 4)
    @cyders = Drink.where(category_id: 5)
    @shots = Drink.where(category_id: 6)
  end

  private

  def skip_pundit?
    params[:controller] =~ /^drinks$/
  end
end
