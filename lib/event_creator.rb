require_relative 'event.rb'

class EventCreator
  def self.run #permet d'exécuter la classe comme un script autonome

    # Demande des informations sur l'événement à l'utilisateur
    puts "Création d'un événement :"
    print "Titre : "
    title = gets.chomp
    print "Date et heure de début (format JJ/MM/AAAA HH:MM) : "
    start_date = gets.chomp
    print "Durée (en minutes) : "
    duration = gets.chomp.to_i
    print "Liste des invités (séparés par des virgules) : "

    # Récupère la liste des invités en entrée utilisateur, la transforme en tableau,
    # supprime les espaces en début et en fin de chaque élément et stocke le résultat dans la variable attendees
    attendees = gets.chomp.split(",").map(&:strip)

    # Création de l'événement en utilisant les informations récupérées plus tôt
    event = Event.new(start_date, duration, title, attendees)

    # Affichage de l'événement créé sous forme de chaîne de caractères
    puts "Événement créé :"
    puts event.to_s
  end
end