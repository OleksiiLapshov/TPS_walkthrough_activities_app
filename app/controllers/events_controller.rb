class EventsController < ApplicationController
  def index
    @events = ["Bugsmash", "Hackathon", "Running from QA", "Rails User Group"]
  end
end
