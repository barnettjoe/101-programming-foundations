WEEKDAYS = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']

def time_of_day(mins_after_midnight)
  time = Time.local(0) + (mins_after_midnight * 60)
  format('%02d:%02d', time.hour, time.min) + ' ' + WEEKDAYS[time.wday]
end

puts time_of_day(0)     # 00:00 sunday
puts time_of_day(-3)    # 23:57 saturday
puts time_of_day(35)    # 00:35 sunday
puts time_of_day(-1437) # 00:03 saturday
puts time_of_day(3000)  # 02:00 tuesday
puts time_of_day(800)   # 13:20 sunday
puts time_of_day(-4231) # 01:29 thursday
