require 'json'
class Filewriter
  def self.readfile
    mode = "r"
    file = File.open("instructions.txt", mode)

    puts file.read
    file.close
    Messages.start_up_message
  end
def self.writer(player_name,game_time,level)
case level
when 1
  @file = "top_scores.json"
when 2
  @file = "top_scores2.json"
when 3
  @file = "top_scores3.json"
end

  former = []
    if File.exists? @file
     file = File.open(@file, "r")
     if !File.zero?@file
       json = File.read(@file)
        former = JSON.parse(json)

     end
     file.close
     File.delete(@file)
   end

   obj = [
     {"name"=>player_name,"time"=>game_time}
   ]
   new_obj = former + obj
   sorted = new_obj.sort_by { |k| k["time"]}
   if sorted.count > 10
     sorted.pop
   end
   puts "     ======TOP SCORES=====     "
   c = 1
   sorted.each do |a|
     puts "#{c}- Name: #{a["name"].upcase}  Time: #{(a["time"] / 60)}min #{(a["time"] % 60)}secs "
     c +=1
   end

   f = File.new(@file,"w")
  f.close
  File.open(@file,"w") do |f|
  f.puts JSON.pretty_generate(sorted)
 end





end


end
