def sequence(num)
  arr = (1..num.abs).to_a
  return [0] if num == 0
  num > 0 ? arr : arr.map { |x| -x }.reverse
end
