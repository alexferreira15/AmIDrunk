class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home dashboard]

  def home
  end


  def dashboard
    @tab = Tab.where(user: current_user).to_a.find { |tab| !tab.finished? }
    @tab ||= Tab.create(user: current_user, start_datetime: Time.now)
    @tab_drink = TabDrink.new

    @drinks = Drink.all
    @wines = Drink.where(category: Category.find_by(name: "Wines"))
    @beers = Drink.where(category: Category.find_by(name: "Beers"))
    @spirits = Drink.where(category: Category.find_by(name: "Spirits"))
    @cocktails = Drink.where(category: Category.find_by(name: "Cocktails"))
    @cyders = Drink.where(category: Category.find_by(name: "Cyders"))
    @shots = Drink.where(category: Category.find_by(name: "Shots"))

    @grouped_drinks = @tab.tab_drinks.group_by { |tab_drink| tab_drink.drink }

    @percentage = 0

    @tab.drinks.each do |drink|
      volume = drink.volume
      alcohol = drink.alcohol
      weight = current_user.weight
      @percentage += ((volume * alcohol * 0.8) / (weight * 0.6) / 100)
    end
    @percentage = @percentage.round(2)

    @green_sentences = ["Save water, drink alcohol", "Are you even drinking ?", "Is water your best friend ?"].sample
    @yellow_sentences = ["Be careful if driving. If not, keep going", "Don't need your glasses anymore", "It's hitting soon, beware"].sample
    @orange_sentences = ["'Please don't drive' - Love, Mom'", "Make love, don't drive", "Party's ON, just don't drive"].sample
    @red_sentences = ["Take it easy cowboy !", "You should find a plastic bag.", "Just don't lose your phone!"].sample
  end
end
