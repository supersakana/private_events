class EventAttendingsController < ApplicationController
  def index
    @invites = EventAttending.all
  end

  def new
    @invite = EventAttending.new
  end

  def create
    @invite = current_user.event_attendings.build(event_attending_params)
    if @invite.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @invite = EventAttending.find(params[:id])
  end

  private

  def event_attending_params
    params.require(:event_attending).permit(:attendee_id, :attended_event_id)
  end
end
