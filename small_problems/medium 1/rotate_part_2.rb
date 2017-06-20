def rotate_array(arr)
  arr[1..-1] +  [arr[0]]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_int(int)
  rotate_string(int.to_s).to_i
end

def rotate_rightmost_digits(int, n)
  a = int.to_s
  (a[0, (a.length - n)] + rotate_string(a[-n..-1])).to_i
end


puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917