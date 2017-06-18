def fizzbuzz(a, b)
  (a..b).each do |x|
    if x % 3 == 0 && x % 5 == 0
      puts 'FizzBuzz'
    elsif x % 3 == 0 
      puts 'Fizz'
    elsif x % 5 == 0
      puts 'Buzz'
    else
      puts x
    end  
  end
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
