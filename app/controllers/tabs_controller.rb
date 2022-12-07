class TabsController < ApplicationController
  def index
    @tabs = current_user.tabs
  end

  def show
    @tab = Tab.find(params[:id])
  end

  def create
    @tab = Tab.new
    @tab.user_id = current_user.id
    @tab.start_datetime = Time.new
    @tab.save!
    redirect_to tab_path(@tab)
  end

  def update
    @tab = Tab.find(params[:id])
    @tab.end_datetime = Time.now

    @percentage = 0

    @tab.drinks.each do |drink|
      volume = drink.volume
      alcohol = drink.alcohol
      weight = current_user.weight
      @percentage += ((volume * alcohol * 0.8) / (weight * 0.6) / 100)
    end
    @tab.final_percentage = @percentage.round(2)
    @tab.save!
    redirect_to user_dashboard_path(current_user.id)
  end

  private

  def skip_pundit?
    params[:controller] =~ /^tabs$/
  end
end
