puts "What is the bill?"
bill = gets.chomp.to_f
puts "what is the tip percentage?"
percent = gets.chomp.to_f
tip = bill * percent / 100
puts "the tip is £#{sprintf("%.2f", tip)}"
puts "the total is £#{sprintf("%.2f", bill + tip)}"