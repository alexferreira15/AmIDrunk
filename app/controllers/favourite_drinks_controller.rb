class FavouriteDrinksController < ApplicationController
  before_action :set_fds, only: %i[destroy]

  def create
    @fd = FavouriteDrink.new(fd_params)
    @fd.save!
    # redirect_to
  end

  def destroy
    @fd.destroy
    # redirect_to
  end

  private

  def set_fds
    @fd = FavouriteDrink.find(params[:id])
  end

  def fd_params
    params.require(:favourite_drink).permit(:drink_id, :user_id)
  end
end
