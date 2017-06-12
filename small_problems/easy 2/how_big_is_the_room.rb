SQFEET_IN_SQMETRE = 10.7639
SQINCHES_IN_SQFOOT = 12.0 ** 2
SQFEET_IN_SQ_CM = 0.0328084 ** 2


puts "enter the length of the room in feet"
length_f = gets.chomp.to_f
puts "enter the width of the room in feet"
width_f = gets.chomp.to_f
area_f = length_f * width_f
puts "the area of the room is #{area_f.round 3} square feet"
puts "that's #{(area_f / SQFEET_IN_SQMETRE). round 3} square metres..."
puts "or #{(area_f * SQINCHES_IN_SQFOOT).round 3} square inches"
puts "or #{(area_f / SQFEET_IN_SQ_CM).round 3} square centimetres"