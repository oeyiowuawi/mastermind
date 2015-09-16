
require_relative "master_messages"
require_relative "computer_guess"
require_relative "game"
require 'colorize'
require_relative 'FileHandler'
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
        t = Time.now
        t_sec = t.sec
        start_time = (t.min*60) + t_sec
        trials = 0
        comp = Computer.new(l_num).level_comp_guess
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
            elsif input_guess.length > num || input_guess.length < num
                puts "the sequence has to be 4 colors displayed. Attempts left: #{12 - trials} \n Try Again".red
            elsif input_guess == comp
                trials += 1
                puts Messages.congratulatory_message.green
                e_t = Time.now
                e_t_s = e_t.sec
                end_time = (e_t.min *60) + e_t_s
                game_time = end_time - start_time
                player_name = gets.chop
                puts "#{player_name}, You guessed the sequence '#{comp}' in #{game_time/60.0}"
                #Filewriter.writer(player_name,game_time,comp)
                Messages.end_message
                system(exit)
            elsif input_guess.length == num
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

end
