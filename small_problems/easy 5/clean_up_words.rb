def cleanup(sentence)
  sentence.gsub(/[^[:alpha:]]+/, ' ')
end

# or...

def cleanup(sentence)
  sentence.gsub(/[^a-z]+/i, ' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
