def triangle(*a)
  a.reduce(:+) == 180 && a.map(&:positive?).all? ? a.max >= 90 ? a.max > 90 ? :obtuse : :right : :acute : :invalid
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
