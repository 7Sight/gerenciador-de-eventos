class EventsController < ApplicationController
    def index
        @events = Event.all
        render 'events'
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        render 'registerEvent'
    end

    def create
        @event = Event.new(event_params)
 
        @event.save
        redirect_to @event
    end

    private 

    def event_params
        params.require(:events).permit(:event_name, :event_ministrant, :event_credits, :event_slots, :event_local, :event_date, :event_hour, :event_description)
    end


end