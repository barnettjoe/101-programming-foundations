puts "What is your name?"
user_name = gets.chomp!
if user_name[-1] == '!'
  user_name.chop!
  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}."
end
