require_relative "master_messages"
require_relative "computer_guess"
require_relative "game"

class Level
    def self.level_one
        loop do
            Messages.beginner_message
            input_guess = gets.chomp
              if input_guess == 'q'
            Messages.end_message
              system(exit)
            elsif input_guess == "c"
            puts  "The secreat code is #{Computer.level_one_comp_guess}"

            elsif input_guess.length > 4 || input_guess.length < 4
              Messages.guess_length
            elsif input_guess.length == 4 && (input_guess.upcase.chars.sort.join =="BGRY" )
            comp = Computer.level_one_comp_guess

            Game(input_guess,comp)
            else
              Messages.valid_letter
            end

        end


  end


  def level_two
  end
  def level_three
  end
  def level_three
  end



end
