class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.create!(event_params)
    if @event.save
      redirect_to managers_path, notice: "イベントを作成しました"
    else
      render :new, notice: "イベントを失敗しました"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private 

  def event_params
    params.require(:event).permit(:name, :content, :start_day, :end_day).merge(user_id: current_user.id)
  end

end
