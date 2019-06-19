class EventsController < ApplicationController

  skip_before_action :authorized?, only: [:index, :show]
  before_action :find_event, except: [:index, :new, :create]
  before_action :all_event, only: [:index]

  def index

  end
  def show

  end

  private
  def find_event
    @event = Event.find(params[:id])
  end

  def all_event
    @events = Event.all
  end

  # def event_params
  #   params.require(:event).permit(:name, :event_name, :password, :bio)
  # end



end
