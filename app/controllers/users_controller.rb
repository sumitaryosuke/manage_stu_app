class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_score, only: [:show, :edit, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @scores = Score.all.order('grade_id DESC')
  end

  def user_params
    params.require(:user).permit(:id, :last_name, :first_name, :last_name_kana,:postal_code, :first_name_kana,:prefecture_code, :birth_day, :city, :street, :building).merge(user_id: current_user.id)
  end

  private

  def set_score
    @score = Score.all
  end

  def redirect_user
    redirect_to root_path unless current_user.id == @user.id

end