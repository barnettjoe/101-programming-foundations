gap = ' '
10.times do
  puts "#{gap}The Flintstones Rock!"
  gap += ' '
end

# or...

10.times {|x| puts "#{' ' * x} The Flintstones Rock!"}