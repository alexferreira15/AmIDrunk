class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home dashboard]

  def home
  end

  def dashboard
    # @user = User.find(params[:id])
    # params[:user_id] = @user.id
  end
end
