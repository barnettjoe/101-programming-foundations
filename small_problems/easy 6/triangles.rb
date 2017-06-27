def triangle(num, flip_x = false, flip_y = false)
  strs = [(' ' * num)]
  (1..num).each_with_index do |idx|
    new_str = strs[-1].clone
    new_str[- (idx)] = "*"
    strs.push(new_str)
  end
  strs.reverse! if flip_y
  strs.map! { |x| x.reverse} if flip_x
  strs.each { |x| puts x }
end

triangle(20, false, true) 
triangle(20, true, true) 
triangle(20) 
triangle(20, true) 
