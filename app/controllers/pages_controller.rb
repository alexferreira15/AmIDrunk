class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home dashboard]

  def home
  end

  def dashboard
    @drinks = Drink.all
    @wines = Drink.where(category_id: 1)
    @beers = Drink.where(category_id: 2)
    @spirits = Drink.where(category_id: 3)
    @cocktails = Drink.where(category_id: 4)
    @cyders = Drink.where(category_id: 5)
    @shots = Drink.where(category_id: 6)
  end
end
