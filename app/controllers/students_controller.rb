class StudentsController < ApplicationController
  def index
    # @user = User.find(current_user.id)
    @events = Event.all
  end

end
