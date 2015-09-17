require 'colorize'
require_relative 'computer_guess'
require_relative 'game'
class Multiplayer
  def initialize
  puts "<enter> 1 to choose level one(Beginner level)".green
  puts "<enter> 2 to choose level two(Intermediate level)".green
  puts "<enter> 3 to choose level three(Advance level)".green
  puts "<enter> q to <q>uit".red
  @comp = ""
  print ">"
   l_num = 0
    input = gets.chomp
    case input
    when "1"
        @comp = Computer.new(1).level_comp_guess
        @l_num = 1
        @num = 4
    when "2"
      @comp = Computer.new(2).level_comp_guess
      l_num = 2
      @num = 6
    when "3"
      @comp = Computer.new(3).level_comp_guess
      l_num = 3
      @num = 8
    end
    puts "Player one name"
    @player1 = gets.chomp
    puts "Player two name"
    @player2 = gets.chomp
  end
  def select_level
          Messages.level_start_messages(@l_num)
          puts @comp
          loop do
              puts "Enter your Guess #{@player1}"
              print ">".green
              player1_guess = gets.chomp
              puts "Enter your Guess #{@player2}"
              print ">".green
              player2_guess = gets.chomp
              if (player1_guess == 'q' || player1_guess == 'quit') || (player2_guess == 'q' || player2_guess == 'quit')
                  Messages.end_message
                  system(exit)
              elsif player1_guess == "c" || player2_guess == "c"
                  puts  "The secret code is #{@comp.upcase}".blue
              elsif player1_guess.length > @num || player2_guess.length < @num
                  puts "the sequence has to be 4 colors displayed. \n Try Again".red
              elsif player1_guess == @comp
                  puts "#{@player1} have won!!!!!".green
                  system(exit)
                  elsif player2_guess == @comp
                    puts "#{@player2} have won".green
                    system(exit)
              elsif player1_guess.length == @num && player2_guess.length == @num
                  result = Game.new(player1_guess,@comp)
                  result2 = Game.new(player2_guess,@comp)
                  puts  "You av #{result.exacts} exact(s), #{result.partials} partial match(es).\n Try again".red
                  puts  "You av #{result2.exacts} exact(s), #{result2.partials} partial match(es). \n Try again".red
              end
      end

end


end
