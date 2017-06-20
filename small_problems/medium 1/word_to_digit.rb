DIGIT_NAMES = {'zero' => 0, 'one'=> 1, 'two'=> 2, 'three'=> 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight'=> 8, 'nine'=> 9}

def word_to_digit(sentence)
  word_array = sentence.split.map do |x|    ### iterate over words...map either onto itself or onto numeral with appended punctuation
    a = DIGIT_NAMES.keys.select { |num_word| x =~ Regexp.new("^#{num_word}\W*\z?")  } ### a is arry e.g. ['four']  or []
    if a != [] # then we should extract numeral from a         
      scan_array = x.scan Regexp.new("^(#{a[0]})(\.*)\Z?")
      scan_array[0].size > 1 ? punc_part = scan_array[0][1] : punc_part = ''  # but we also need to scan for punctuation
      DIGIT_NAMES[a[0]].to_s + punc_part                  
    else
      x
    end
  end
  word_array.join(' ')
end

puts word_to_digit('Please call someone at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
