def substrings_at_start(str)
  str.chars.map.with_index { |_, idx| str[0, (idx + 1)] }
end

def substrings(str)
    substrings_at_start(str.reverse).map do |x|
    substrings_at_start(x.reverse)
  end.reverse.flatten
end


puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]