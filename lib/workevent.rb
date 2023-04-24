require_relative 'event.rb'

class WorkEvent < Event
  attr_accessor :location

  def initialize
    def initialize(start_date, duration, title, attendees, location)
      @location = location # je rajoute @location 

      super(start_date, duration, title, attendees) #fait appel au initialize de la classe Event
    end
  end

  def is_event_acceptable?
    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end