require 'time'

class Event
  @@all_events = []

  attr_accessor :start_date, :duration, :title, :attendees
  #attr_accessor = time, integer, string, array

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)# convertie la str en objet time
    @duration = duration.to_i #convertie en entier
    @title = title
    @attendees = attendees.join(", ")#convertie l'array en string
    @@all_events << self
  end

  def self.all_events
    @@all_events
  end

  def end_date
    return @start_date + @duration
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    @start_date > Time.now
  end

  def is_soon?
    @start_date - Time.now < 1800 #compare la dif entre debut et heure actuelle avec 30min 
  end

  def to_s
    "titre : #{@title}, date de debut : #{@start_date}, durée : #{@duration} minutes, invités : #{@attendees}"
  end

end
