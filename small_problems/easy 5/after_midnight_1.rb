def time_of_day(mins_after_midnight)
  hours, mins = mins_after_midnight.divmod(60)
  hour_time = (0..23).to_a.rotate(hours).first
  min_time = (0..59).to_a.rotate(mins).first
  format('%02d:%02d', hour_time, min_time)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
