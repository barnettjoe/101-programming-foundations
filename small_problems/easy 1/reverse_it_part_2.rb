# convert string to array
# iterate over elements
  # if 5 or more letters long --> reverse it
  # else --> leave as is
# join array again to give string

def reverse_words(sentence)
  reversed_array = sentence.split.map do |x| 
    if x.length > 4
      x.reverse
    else
      x
    end
  end
  reversed_array.join ' '
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS