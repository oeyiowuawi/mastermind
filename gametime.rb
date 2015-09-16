class Game_time
def self.time
    t = Time.now
    t_min = t.min * 60
    t_secs = t.sec
    total_time = t_min + t_secs
    return total_time
end

end
