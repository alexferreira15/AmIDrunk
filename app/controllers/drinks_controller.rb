class DrinksController < ApplicationController
  def index
    if params[:category].present?
      @drinks = Drink.where(category: params["beer"])
    else
      @drinks = Drink.all
    end
  end

  private

  def skip_pundit?
    params[:controller] =~ /^drinks$/
  end
end
