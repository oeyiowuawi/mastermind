class Computer
def initialize(level)
case level
when 1
@color = ["R","G","B","Y"]
@characters = 4
@number_colors = 4
@computer_guess = ""
  @computer_guess_index = []
when 2
@color = ["R","G","B","Y","O"]
@characters = 6
@number_colors = 5
@computer_guess = ""
  @computer_guess_index = []
when 3
@color = ["R","G","B","Y","O","I"]
@characters = 8
@number_colors = 6
@computer_guess = ""
  @computer_guess_index = []
end
end
  def level_comp_guess
      @computer_guess_index = []
      @characters.times do
      @computer_guess_index <<  Random.new.rand(@number_colors)
  end
    @computer_guess_index.each do |a|
      @computer_guess += @color[a]
    end
   @computer_guess.downcase
end
end
