require 'date'

def friday_13th(y)
  (0..365).map { |x| Date.new(y) + x }.select{ |x| x.year == y && x.friday? && x.mday == 13 }.size 
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2