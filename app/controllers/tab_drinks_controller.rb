class TabDrinksController < ApplicationController
  def create
    @tab_drink = TabDrink.new
    @tab_drink.tab = Tab.where(user: current_user).to_a.find { |tab| !tab.finished? }
    @tab_drink.drink = Drink.find(params[:drink_id])
    authorize @tab_drink
    @tab_drink.save!
    redirect_to user_dashboard_path(current_user)
  end
end
