require 'colorize'
class Messages
  def self.start_up_message

    puts  "Welcome to MASTERMIND!!!! \n Would you like to "+"(p)lay".blue + ", read the (i)nstruction or (q)uit?"
  end

  def self.end_message
    puts  "Thanks for playing!! Come back soon!"
  end

def self.beginner_message_level_one
  puts "I have generated a beginner sequence with four elements made up of:" + " (r)ed,".red + "
(g)reen,".green + " (b)lue,".blue + " and" + " (y)ellow".yellow + ". Use (q)uit at any time to end the game. You have 12 guesses. You can give us and (c)heck the computer`s guess\n
What's your guess?"
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

 def self.intermediate_message_level
   puts "I have generated an intermediate sequence with five elements made up of: (r)ed,
 (g)reen, (b)lue,  (y)ellow and (o)range. You are to guess using 6 characters. Let`s see if you are psychic enough to guess the computer`s sequence  Use (q)uit at any time to end the game. You have 12 guesses. You can give us and (c)heck the computer`s guess\n
 What's your guess?"
 end
 def self.expert_message_level
   puts "I have generated an Advance sequence with six elements made up of: (r)ed,
 (g)reen, (b)lue,  (y)ellow, (o)range and (i)ndigo. You are to guess using 8 characters. Let`s see if you are psychic enough to guess the computer`s sequence  Use (q)uit at any time to end the game. You have 12 guesses. You can give us and (c)heck the computer`s guess\n
 What's your guess?"
 end
def self.congratulatory_message
  return "Congratutations!! You guessed the sequence. \n Enter your name"
end

 end
