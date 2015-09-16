require_relative "levels"
class Play
  def self.run
    puts "To start the game select a level"
    puts "<enter> 1 to choose level one(Beginner level)"
    puts "<enter> 2 to choose level two(Intermediate level)"
    puts "<enter> 3 to choose level three(Advance level)"
    puts "<enter> q to <q>uit"
loop do
    input1 = gets.chomp
    case input1
    when "1"

     Level.new(1)
    when "2"
      Level.new(2)
    when "3"
      Level.new(3)
    when "q","quit"
      system(exit)
    else
      puts "follow the command and input the correct number."

    end
  end
end
  end
