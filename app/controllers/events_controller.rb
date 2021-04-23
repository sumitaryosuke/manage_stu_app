class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :destroy]

  def index
    @events = Event.all.order('created_at DESC')
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to events_path, notice: "イベントを作成しました"
    else
      render :new, notice: "イベントを失敗しました"
    end
  end

  def show
  end

  def edit
    unless user_signed_in? && (current_user.id == @event.user_id)
      redirect_to action: :index
    end
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      redirect_to event_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to events_path if @event.destroy
  end

  private 

  def event_params
    params.require(:event).permit(:name, :content, :start_day, :end_day).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
