class Computer
  @color = ["R","G","B","Y"]

    def self.level_one_comp_guess
       #original_color.shuffle

      computer_guess_index = []
      4.times do
          computer_guess_index <<  Random.new.rand(4)

        end

        computer_guess = ""
        computer_guess_index.each do |a|
        computer_guess += @color[a]

        end
      return computer_guess.downcase
end

def self.level_two_comp_guess
  new_color = @color + ["O"] 

  computer_guess_index = []
   6.times do
  computer_guess_index <<  Random.new.rand(5)

  end

  computer_guess = ""
  computer_guess_index.each do |a|
   computer_guess += new_color[a]

  end
  return computer_guess.downcase

end

def self.level_three_comp_guess
  new_color = @color + ["O","I"] #original_color.shuffle

  computer_guess_index = []
   8.times do
  computer_guess_index <<  Random.new.rand(6)

  end

  computer_guess = ""
  computer_guess_index.each do |a|
   computer_guess += new_color[a]

  end
  return computer_guess.downcase

end

end
#puts Computer.level_one
