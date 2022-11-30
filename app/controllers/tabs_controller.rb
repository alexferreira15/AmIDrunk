class TabsController < ApplicationController
  def index
    @tabs = policy_scope(Tab)
  end

  def create
    @tab = Tab.new(fd_params)
    @tab.save!
    # redirect_to
  end

  def update
    @tab = Tab.find(params[:id])
    @tab.save!
    # redirect_to
  end

end
