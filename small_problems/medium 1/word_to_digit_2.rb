DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  num_gaps = /(?<=\d)\s(?=\d)/
  words_array = words.split(num_gaps)
  words_array.each do |section|
    DIGIT_HASH.keys.each do |word|
      section.gsub!(/\b#{word}\b/i, DIGIT_HASH[word])
    end
    section.gsub!(num_gaps, '')
  end
  reg = Regexp.new("(\\d)" * 10)
  words_array.join(' ').gsub(reg) do |match|
    arr = match
    "(#{arr[0, 3]}) #{arr[3, 3]}-#{arr[6, 4]}"
  end
end


puts word_to_digit('Please call me at SIX Five seven five One two THREE four eight NINE. Thanks. Leave these ones with spaces: 0 7 5 8 6 8 6 8') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
