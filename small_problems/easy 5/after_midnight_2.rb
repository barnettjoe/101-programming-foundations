def after_midnight(time_string)
  hours = time_string[0, 2].to_i
  mins = time_string[3, 2].to_i
  (hours * 60 + mins) % (24 * 60)
end

def before_midnight(time_string)
  hours = time_string[0, 2].to_i
  mins = time_string[3, 2].to_i
  ((60 - mins) + (23 - hours) * 60) % (24 * 60)
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0