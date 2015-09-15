class Messages
  def self.start_up_message

    puts  "Welcome to MASTERMIND!!!! \n Would you like to (p)lay, read the (i)nstruction or (q)uit?"
  end

  def self.end_message
    puts  "Thanks for playing!! Come back soon!"
  end

def self.beginner_message
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\n
What's your guess?"
end
def self.guess_length
  puts "OOPS!!! your guess is either too long or too short. check ur input"
end
def self.valid_letter
   puts "Enter a valid letter"
 end

end
