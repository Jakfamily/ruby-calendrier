require 'time'

class Event
  @@all_events = []

  attr_accessor :start_date, :duration, :title, :attendees
  #attr_accessor = time, integer, string, array

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)# convertie la str en objet time
    @duration = duration
    @title = title
    @attendees = attendees
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

  def postpone_24h
    @start_date += 24*60*60 # permet de decaler de 24h le start_date
  end

  def to_s
    puts "titre : #{@title}"
    puts "date de debut : #{@start_date}"
    puts "durée : #{@duration} minutes"
    puts "Invités :"
    puts  @attendees.each {|attendee| puts attendee.email}
  end

  def age_analysis
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement
  
    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end
  
    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne
  
    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end
end



class WorkEvent < Event
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