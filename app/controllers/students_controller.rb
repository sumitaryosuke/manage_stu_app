class StudentsController < ApplicationController
  def index
    @events = Event.all
  end
end
