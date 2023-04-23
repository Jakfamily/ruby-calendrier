require './lib/user'
require './lib/event'
require './lib/event_creator'


# julie = User.new("julie@email.com", 32)
# puts julie.email
# puts julie.age

# User.new("julie@julie.com", 35)
# User.new("jean@jean.com", 23)
# User.new("claude@claude.com", 75)


# event = Event.new("2023-04-01 13:00" , 60, "meeting", ["alice@gmail.com", "jhon@gmail.com"])
# puts event.to_s


# #On cherche un des user à partir de son e-mail
# user_1 = User.find_by_email("claude@claude.com")

# #On peut ensuite utiliser ce user comme on veut. Par exemple pour afficher son age:
# puts "Voici l'age du User trouvé : #{user_1.age}"
# puts "voici l'email du User trouvé : #{user_1.email}"
 

EventCreator.run

