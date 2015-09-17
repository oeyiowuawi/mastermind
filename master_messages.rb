require 'colorize'
class Messages
  def self.start_up_message

    puts  "WELCOME TO MASTERMIND!!!!".bold.green+" \n Would you like to "+"(p)lay".blue + ", read the " + "(i)nstruction".yellow + " or" + " (q)uit?".red
  end

  def self.end_message
    puts  "Thanks for playing!! Come back soon!".green
  end

def self.guess_length
  puts "OOPS!!! your guess is either too long or too short. check ur input"
end
def self.valid_letter
   puts "Enter a valid letter"
 end
 def self.trials_exhausted
   puts "You have exhausted your number of attempts"
 end
def self.congratulatory_message
  return "Congratutations!! You guessed the sequence. \n Enter your name"
end
def self.level_start_messages(l_numb)
  case l_numb
  when 1
  puts "I have generated a beginner sequence with four elements made up of:" + " (r)ed,".red + "
(g)reen,".green + " (b)lue,".blue + " and" + " (y)ellow".yellow + ". Use (q)uit at any time to end the game. You have 12 guesses. The game will end once you exhaust your guesses. You can repeat a color in ur guess as long as the color is a color that is specified for the level  Goodluck\n
What's your guess?"
when 2
puts "I have generated an intermediate sequence with five elements made up of: (r)ed,
(g)reen, (b)lue,  (y)ellow and (o)range. You are to guess using 6 characters. Let`s see if you are psychic enough to guess the computer`s sequence  Use (q)uit at any time to end the game. You have 12 guesses. The game will\n end once you exhaust your guesses. You can repeat a color in your guess as long as the color is a color that is specified in the level Goodluck\n
What's your guess?"
when 3
puts "I have generated an Advance sequence with six elements made up of: (r)ed,
(g)reen, (b)lue,  (y)ellow, (o)range and (i)ndigo. You are to guess using 8 characters. Let`s see if you are psychic enough to guess the computer`s sequence  Use (q)uit at any time to end the game. You have 12 guesses. The game will\n end once you exhaust your guesses. You can repeat a color in ur guess as long as the color is a color that is specified in the level Goodluck\n
What's your guess?"
end
end


 end
