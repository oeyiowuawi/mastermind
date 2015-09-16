class Game
    def initialize(input_guess,comp)
@input_guess = input_guess.split("")
@comp =comp.split("")
@zipped_array = @comp.zip(@input_guess)
end
  def exacts
   b =  @zipped_array.select{|x| x[0] == x[1]}.count
  return b
  end
  def partials
    @zipped_array.select!{|x| x[0] != x[1]}
    c_guess, player_guess = @zipped_array.transpose
    partial_match = []
      player_guess.each do |a|
        if c_guess.include? a
         c_guess.delete_at(c_guess.index(a))
         partial_match << a
       end
      end
   count =  partial_match.size
   return count
  end
end
