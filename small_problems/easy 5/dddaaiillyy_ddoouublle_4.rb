def crunch(str)
  [*('a'..'z'), *('0'..'9'), *('A'..'Z')].each do |x|
    dbl_letter_index = 0
      while dbl_letter_index
        dbl_letter_index = str =~ /#{x + x}/ 
        str = str[0, dbl_letter_index] + str[(dbl_letter_index + 1)..-1] if dbl_letter_index
      end
    end
  str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''