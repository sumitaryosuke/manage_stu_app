class EventsController < ApplicationController
  def index
    @events = Event.all.order('created_at DESC')
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create!(event_params)
    if @event.save
      redirect_to events_path, notice: "イベントを作成しました"
    else
      render :new, notice: "イベントを失敗しました"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    redirect_to events_path if @event.destroy
  end

  private 

  def event_params
    params.require(:event).permit(:name, :content, :start_day, :end_day).merge(user_id: current_user.id)
  end

end
