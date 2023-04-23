require './lib/user'
require './lib/event'


# julie = User.new("julie@email.com", 32)
# puts julie.email
# puts julie.age


event = Event.new("2023-04-01 13:00" , 60, "meeting", ["alice", "jhon"])
puts event.to_s
