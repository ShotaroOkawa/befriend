class UserEventsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @user_event = UserEvent.new(user_id: current_user.id, event_id: @event.id)
    if @user_event.valid?
      @user_event.save
      redirect_to root_path
    else
      redirect_to event_path(@event)
    end 
  end
end
