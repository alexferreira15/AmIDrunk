class TabsController < ApplicationController
  def index
    @tabs = current_user.tabs
  end

  def show
    @tab = Tab.find(params[:id])
  end

  def new
    @tab = Tab.new
    authorize @tab
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
    @tab.save!
    # redirect_to
  end

  private

  def skip_pundit?
    params[:controller] =~ /^tabs$/
  end
end
