
require_relative "master_messages"
require_relative "computer_guess"
require_relative "game"
require 'colorize'
require 'FileHandler'

class Level
    def self.level_one

            Messages.beginner_message_level_one
            trials = 0
            comp = Computer.level_one_comp_guess
            puts comp
            loop do
              break if trials == 12
                input_guess = gets.chomp
                if input_guess == 'q'
                    Messages.end_message
                    system(exit)
                elsif input_guess == "c"
                    puts  "The secret code is #{comp.upcase}"
                    Messages.end_message
                    system(exit)
                elsif input_guess.length > 4 || input_guess.length < 4
                    puts "the sequence has to be 4 colors displayed. Attempts left: #{12 - trials} \n Try Again".red
                elsif input_guess == comp
                    trials += 1
                    puts Messages.congratulatory_message.green
                    player_name = gets.chop
                    Filewriter.new(1).writer()
                    Messages.end_message
                    system(exit)
                elsif input_guess.length == 4
                    trials += 1
                    result = Game.new(input_guess,comp)
                    puts  "You av #{result.exacts} exact(s), #{result.partials} partial match(es).#{12 - trials} trials Left \n Try again".red
                else
                    Messages.valid_letter
                end

        end
        Messages.trials_exhausted
        Messages.end_message
        system(exit)



  end


  def self.level_two
    Messages.intermediate_message_level
    trials = 0
    comp2 = Computer.level_two_comp_guess
    puts comp2
    loop do
      break if trials == 12
        input_guess2 = gets.chomp
        if input_guess2 == 'q'
            Messages.end_message
            system(exit)
        elsif input_guess2 == "c"
            puts  "The secret code is #{comp2.upcase}"
            Messages.end_message
            system(exit)
        elsif input_guess2.length > 6 || input_guess2.length < 6
            puts "the sequence has to be 5 colors displayed and 6 characters. Attempts left: #{12 - trials} \n Try Again"
        elsif input_guess2 == comp2
            trials += 1
            puts "HOOORAY you have won in #{trials} Attempts!!!!".green
            Messages.end_message
            system(exit)
        elsif input_guess2.length == 6
            trials += 1
            result = Game.new(input_guess2,comp2)
            puts  "You av #{result.exacts} exact(s), #{result.partials} partial match(es).#{12 - trials} trials Left \n Try again".red
        else
            Messages.valid_letter
        end

    end
    Messages.trials_exhausted
    Messages.end_message
    system(exit)
  end



  def self.level_three
    Messages.expert_message_level
    trials = 0
    comp3 = Computer.level_three_comp_guess
    puts comp3
    loop do
      break if trials == 12
        input_guess3 = gets.chomp
        if input_guess3 == 'q'
            Messages.end_message
            system(exit)
        elsif input_guess3 == "c"
            puts  "The secret code is #{comp3.upcase}"
            Messages.end_message
            system(exit)
        elsif input_guess3.length > 8 || input_guess3.length < 8
            puts "the sequence has to be 5 colors displayed and 6 characters. Attempts left: #{12 - trials} \n Try Again"
        elsif input_guess3 == comp3
            trials += 1
            puts "HOOORAY you have won in #{trials} Attempts!!!!".green

            Messages.end_message
            system(exit)
        elsif input_guess3.length == 6
            trials += 1
            result = Game.new(input_guess3,comp3)
            puts  "You av #{result.exacts} exact(s), #{result.partials} partial match(es).#{12 - trials} trials Left \n Try again".red
        else
            Messages.valid_letter
        end

    end
    Messages.trials_exhausted
    Messages.end_message
    system(exit)

  end



end
