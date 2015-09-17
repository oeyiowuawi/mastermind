
require_relative "master_messages"
require_relative "computer_guess"
require_relative "game"
require 'colorize'
require_relative 'FileHandler'
require_relative 'gametime'
class Level
def initialize(level)
case level
when 1
select_level(1,4)
when 2
select_level(2,6)
when 3
select_level(3,8)
end
end

private
def select_level(l_num,num)
        Messages.level_start_messages(l_num)
        start_time = Game_time.time
        trials = 0
        comp = Computer.new(l_num).level_comp_guess
        puts comp
        loop do
          break if trials == 12
            print ">".green
            input_guess = gets.chomp
            if input_guess == 'q' || input_guess == 'quit'
                Messages.end_message
                system(exit)
            elsif input_guess == "c"
                trials += 1
                puts  "The secret code is #{comp.upcase} Attempts left: #{12 - trials}".blue
            elsif input_guess.length > num || input_guess.length < num
                puts "the sequence has to be 4 colors displayed. Attempts left: #{12 - trials} \n Try Again".red
            elsif input_guess == comp
                trials += 1
                gameCalc(start_time,comp,l_num)
            elsif input_guess.length == num
                trials += 1
                result = Game.new(input_guess,comp)
                puts  "You av #{result.exacts} exact(s), #{result.partials} partial match(es).#{12 - trials} trials Left \n Try again".red
            else
                Messages.valid_letter
            end
    end
    Messages.trials_exhausted
    replay = gets.chomp
    case replay
    when "y"
      select_level(l_num,num)
    when "n"
      Messages.end_message
      system(exit)
    end




end
def gameCalc(start_time,comp,l_num)
  puts Messages.congratulatory_message.green
  end_time = Game_time.time
  game_time_mins = (end_time - start_time) / 60
  game_time_secs = (end_time - start_time) % 60
  print ">".green
  player_name = gets.chop
  puts "#{player_name}, You guessed the sequence '#{comp}' in #{game_time_mins }mins,#{game_time_secs}secs"
  Filewriter.writer(player_name,(end_time - start_time),l_num)
  Messages.end_message
  system(exit)
end
end
