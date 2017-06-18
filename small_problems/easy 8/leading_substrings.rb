def substrings_at_start(str)
  str.chars.map.with_index { |char, idx| str[0, (idx + 1)] }
end

def substrings_at_start2(str, arr = [])
  return arr if arr.size == str.size
  arr.push str[0..arr.size]
  substrings_at_start2(str, arr)
end

def all_substrings
  substrings_at_start(str.reverse).map { |x| substrings_at_start(x.reverse) }.reverse.flatten
end


puts substrings_at_start2('abc') == ['a', 'ab', 'abc']
puts substrings_at_start2('a') == ['a']
puts substrings_at_start2('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']