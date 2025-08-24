class RegistrationsController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @registrations = Registration.all
  end

end
