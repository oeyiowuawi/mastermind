class ReadInst
  def self.readfile
    mode = "r"
    file = File.open("instructions.txt", mode)
    #puts file.inspect
    puts file.read
    file.close
    Messages.start_up_message
  end
end
