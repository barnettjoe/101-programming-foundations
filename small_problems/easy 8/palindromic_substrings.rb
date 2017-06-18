def substrings_at_start(str)
  str.chars.map.with_index { |_, idx| str[0, (idx + 1)] }
end

def substrings(str)
  substrings_at_start(str.reverse).map do |x|
  substrings_at_start(x.reverse)
  end.reverse.flatten
end

def palindromes(string)
  alnums_only = string.gsub(/[^[:alnum:]]/, '')
  substrings(alnums_only).select do |str| 
    str.casecmp(str.reverse) == 0 && str.size > 1
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') 
puts palindromes('hello-madam-did-madam-goodbye') 
puts palindromes('knitting cassettes') 