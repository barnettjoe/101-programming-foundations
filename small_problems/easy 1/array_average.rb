# sum overall elements
# set count = 0
# each element add to variable
# divide by array.length

def average(array)
  total = 0
  array.each {|x| total += x}
  total / array.length
end

def alt_average(array)
  array.reduce(:+).to_f / array.length
end

puts alt_average([1, 5, 87, 45, 8, 8])
puts alt_average([9, 47, 23, 95, 16, 52])