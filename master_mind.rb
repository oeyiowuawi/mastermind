require_relative "master_messages"
require_relative "readInstruction"
require_relative "play_game"

class MASTERMIND
  Messages.start_up_message


  loop do
    input = gets.chomp
  case input.downcase
   when "i"
     ReadInst.readfile
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
