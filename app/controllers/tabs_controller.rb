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
    @tab.save!
    Tab.new
    redirect_to user_dashboard_path(current_user.id)
  end

  private

  def skip_pundit?
    params[:controller] =~ /^tabs$/
  end
end
