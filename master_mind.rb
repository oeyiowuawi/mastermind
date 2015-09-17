require_relative "master_messages"
require_relative "FileHandler"
require_relative "play_game"
require_relative "playermode"
require 'colorize'

class MASTERMIND
  Messages.start_up_message


print ">".green
  loop do

    input = gets.chomp
  case input.downcase
   when "i"
     Filewriter.readfile
   when "p"
     PlayerMode.mode
   when "q"
     Messages.end_message
     system(exit)
   else
    Messages.valid_letter
   end
end
end
