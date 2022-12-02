class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
