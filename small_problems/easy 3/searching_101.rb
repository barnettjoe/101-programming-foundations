# make array of 1st, 2nd etc.
# prompt for numbers, put into different array
# search array for 6th number
#if includes -> print 'appears'
# else --> print 'does not appear'

for_prompts = %w(1st 2nd 3rd 4th 5th last)
numbers = []

for_prompts.each do |x| 
  puts "==> Enter the #{x} number:"
  numbers.push gets.chomp
end

msg = ((numbers[0, 5].include? numbers[5]) ? 'appears' : 'does not appear')

puts "The number #{numbers[5]} #{msg} in #{numbers[0, 5]}"