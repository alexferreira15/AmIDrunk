class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  # não sei se esta correto, confirmar - Alex F.

  def show
    # authorize @user
    # @wigs = Wig.all
    # @sellings = Selling.all
  end

  def edit
    # authorize @wig
  end

  def update
    # authorize @wig
    @user = User.find(params[:id])
    @user.update(user_params)
    # redirect_to wig_path(@wig)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:username, :first_name, :email, :last_name, :height, :weight, :gender)
  end
end
