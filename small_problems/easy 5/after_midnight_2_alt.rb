def after_midnight(time_string, before_or_after = 'after')
  benchmark = Time.local(0, 1, 1)
  time_input = Time.local(0, 1, 1, time_string[0, 2], time_string[3, 2])
  return ((time_input - benchmark) / 60) % (24 * 60) unless before_or_after == 'before'
  ((benchmark - time_input) / 60) % (24 * 60)
end

def before_midnight(time_string)
  after_midnight(time_string, 'before')
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0