class ScoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_score, only: [:show, :edit, :destroy]

  def index
    
  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.create!(score_params)
    if @score.save
      redirect_to user_path(@score.user_id), notice: "点数を入力しました"
    else
      render :new, notice: "点数入力ができませんでした"
    end
  end

  def edit
    
  end

  def update
    score = Score.find(params[:id])
    if score.update(score_params)
      redirect_to user_path(score.id)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @score.destroy
    redirect_to  user_path(@score.user_id) if @score.destroy
  end

end


def score_params
  params.require(:score).permit(:grade_id, :term_id, :japanese, :mathematics, :english, :science, :social_studies).merge(user_id: current_user.id)
end

def set_score
  @score = Score.find(params[:id])
end
