class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :last_name, :first_name, :last_name_kana,:postal_code, :first_name_kana,:prefecture_code, :birth_day, :city, :street, :building).merge(user_id: current_user.id)
  end

end
