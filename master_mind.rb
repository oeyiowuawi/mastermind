require_relative "master_messages"
require_relative "FileHandler"
require_relative "play_game"
require 'colorize'

class MASTERMIND
  Messages.start_up_message



  loop do
    print ">".green
    input = gets.chomp
  case input.downcase
   when "i"
     Filewriter.readfile
   when "p"
     Play.run
   when "q"
     Messages.end_message
     system(exit)
   else
    Messages.valid_letter
   end
end
end
