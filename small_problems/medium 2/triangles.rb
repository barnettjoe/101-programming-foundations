TYPES = [:invalid, :equilateral, :isosceles, :scalene]

def triangle(*a)
  (a.include? 0) || ((2 * a.max) > a.reduce(:+)) ? TYPES[0] : TYPES[a.uniq.size]
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid