def sum(x)
  (x + 1)*(x / 2)
end

def prod(x)
  (1..x).reduce(:*)
end

int = ''
int_i = 0
loop do 
  puts ">> Please enter an integer greater than 0:"
  int = gets.chomp
  int_i = int.to_i
  break if int_i .to_s == int && int_i > 0 
  puts ">> That doesn't seem to be a valid input. Please try again."
end

op = ''
loop do
  puts ">> Enter 's' to compute the sum ,'p' to compute the product"
  op = gets.chomp
  break if op.downcase == 'p' || op.downcase == 's'
  puts ">> That doesn't seem to be a valid operation. Please try again."
end

if op == 'p'
  puts ">> The product of the integers between 1 and #{int} is #{prod(int_i)}"
end

if op == 's'
  puts ">> The sum of the integers between 1 and #{int} is #{sum(int_i)}" 
end
