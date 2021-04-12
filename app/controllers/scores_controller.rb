class ScoresController < ApplicationController
  def index
    
  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.create!(score_params)
    if @score.save
      redirect_to root_path, notice: "イベントを作成しました"
    else
      render :new, notice: "イベントを失敗しました"
    end
  end
end
