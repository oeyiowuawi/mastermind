class Filewriter
  def self.readfile
    mode = "r"
    file = File.open("instructions.txt", mode)

    puts file.read
    file.close
    Messages.start_up_message
  end
def self.writer_level_one(name,sequnce)
    player = name



end


end
