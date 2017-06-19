hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each { |_, val_arr| val_arr.each { |word| puts word.gsub(/[^aeiou]/i, '') } }