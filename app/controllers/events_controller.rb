class EventsController < ApplicationController
    def index
        render 'events'
    end

    def show
        @events = Event.find(params[:id])
    end

    def new
        render 'registerEvent'
    end

    def create
        @events = Event.new(event_params)
 
        @events.save
        redirect_to @events
    end

    private 

    def event_params
        params.require(:events).permit(:event_name, :event_ministrant, :event_credits, :event_slots, :event_local, :event_date, :event_hour, :event_description)
    end


end