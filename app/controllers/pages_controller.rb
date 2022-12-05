class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home dashboard]

  def home
  end

  def dashboard
    @tab = Tab.where(user: current_user).to_a.find { |tab| !tab.finished? }
    @tab ||= Tab.create(user: current_user, start_datetime: Time.now)
    @tab_drink = TabDrink.new

    @drinks = Drink.all
    @wines = Drink.where(category_id: 1)
    @beers = Drink.where(category_id: 2)
    @spirits = Drink.where(category_id: 3)
    @cocktails = Drink.where(category_id: 4)
    @cyders = Drink.where(category_id: 5)
    @shots = Drink.where(category_id: 6)

    @grouped_drinks = @tab.tab_drinks.group_by { |tab_drink| tab_drink.drink }

    @percentage = 0

    @tab.tab_drinks.each do |drink|
      selected_drink = Drink.find(drink.drink_id)
      volume = selected_drink.volume
      alcohol = selected_drink.alcohol
      weight = current_user.weight
      @percentage += ((volume * alcohol * 0.8) / (weight * 0.6) / 100)
    end
    @percentage = @percentage.round(2)
  end
end
