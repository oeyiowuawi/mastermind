class Computer
#original_color = ["R","G","B","Y","I","V"]
def self.level_one_comp_guess
  color = ["R","G","B","Y"] #original_color.shuffle

  computer_guess_index = []
   4.times do
  computer_guess_index <<  Random.new.rand(4)

 end

 computer_guess = ""
computer_guess_index.each do |a|
   computer_guess += color[a]

end
return computer_guess
end

end
#puts Computer.level_one
