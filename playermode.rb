require 'colorize'
require_relative "play_game"
require_relative "multiplayer"
class PlayerMode
def self.mode
puts "Select Mode"
puts "<enter> S to play single mode".green
puts "<enter> M to play Multiplayer(two players)".green
loop do
print ">"
pmode = gets.chomp
case pmode
when  "s"
  Play.run
when "m", "M"
  Multiplayer.new.select_level
when "q"
  system(q)
else
  puts "enter a valid input"
end
end
end
end
