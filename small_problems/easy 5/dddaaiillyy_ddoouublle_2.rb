def crunch(str)
  new_str = ''
  idx = 0
  while idx < (str.size)
    new_str << str[idx] if str[idx] != str[idx + 1]
  idx += 1
  end
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''