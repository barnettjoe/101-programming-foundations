puts "what is your age?"
age = gets.chomp.to_i
puts "at what age would you like to retire?"
retire_age = gets.chomp.to_i
year = Time.new.year
years_left = retire_age - age
puts "It's #{year}. You will retire in #{year + retire_age - age}."
puts "You have only #{years_left} years of work to go!"