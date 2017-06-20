def rotate_array(arr)
  arr[1..-1] +  [arr[0]]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_int(int)
  rotate_string(int.to_s).to_i
end

def max_rotation(int)
  int_str = int.to_s
  orig_size = int_str.size
  left = ''
  until left.size == orig_size
    int_str = rotate_string(int_str)
    left << int_str[0]
    int_str = int_str[1..-1]
  end
  left.to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
