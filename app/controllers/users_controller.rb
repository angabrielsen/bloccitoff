class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  	@user_items = current_user.items
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
