require 'json'
class Filewriter
  def self.readfile
    mode = "r"
    file = File.open("instructions.txt", mode)

    puts file.read
    file.close
    Messages.start_up_message
  end
def self.writer(player_name,game_time)
    if File.exists?"top_scores.json"
     file = File.open "top_scores.json", "r"
     if !File.zero?"top_scores.json"
       #scoreHash = JSON.parse file.read
       json = File.read('top_scores.json')
        former = JSON.parse(json)

     end
     file.close
     File.delete("top_scores.json")
   end
   obj = [
     {"name"=>player_name,"time "=>game_time}
   ]
   new_obj = former + obj

   f = File.new("top_scores.json","w")
  f.close
  File.open("top_scores.json","w") do |f|
  f.puts JSON.pretty_generate(new_obj)
 end




end


end
