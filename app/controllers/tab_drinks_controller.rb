class TabDrinksController < ApplicationController

  def create
    @tab_drink = TabDrink.new(:drink_id, :user_id)
    @tab_drink.save!
  end

end
