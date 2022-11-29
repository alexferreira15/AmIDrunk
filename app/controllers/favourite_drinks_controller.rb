class FavouriteDrinksController < ApplicationController
  before_action :set_fds, only: %i[edit update]

  # pode não estar bem, consultar depois com o luca e apagar esta linha - Alex F.

  def edit
  end

  def update
    @fds.update(fd_params)
    # redirect_to fd_path(@fds)
  end

  private

  def set_fds
    @fd = Favourite_drink.find(params[:id])
  end

  def fd_params
    params.require(:favourite_drink).permit(:drink_id, :user_id)
  end
end
