
class EventsController < ApplicationController
  def index
    classical = Event.pullAPI
    respond_to do |format|
      format.html
      format.json {render json: classical.to_json}
    end
  end

  def create
    event = Event.create(event_params)
    respond_to do |format|
      format.json {render :json => event.to_json}
      format.html {redirect_to '/events'}
    end
  end


  private
  def event_params
    params.require(:event).permit(:name)
  end
end
