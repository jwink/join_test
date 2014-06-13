
class EventsController < ApplicationController
  def index
    classical = Event.pullAPI
    respond_to do |format|
      format.html
      format.json {render json: classical.to_json}
    end
  end
end
