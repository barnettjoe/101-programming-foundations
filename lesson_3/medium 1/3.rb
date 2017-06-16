def factors(number)
  dividend = number
  divisors = []
  loop do
    break if dividend <= 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors 0