# find longer string
# return shorter + longer + shorter

def short_long_short(a, b)
 a.size > b.size ? b + a + b : a + b + a
end


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"