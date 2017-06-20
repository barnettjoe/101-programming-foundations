def fibonacci(n)
  first, last = [1, 1]
  return last if n < 3
  (n - 2).times { first, last = last, (first + last) }
  last
end
str = ''
(1..1000).each { |el|  str << fibonacci(el).to_s[-1]}
p str