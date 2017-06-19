GRADE_LIMITS = [90, 80, 70, 60, 0].zip %w(A B C D F)

def get_grade(a, b, c)
  avg = (a + b + c).to_f / 3
  GRADE_LIMITS.select { |sub_arr| avg >= sub_arr[0] }[0][1]
end 

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(2, 3, 12) == "F"
