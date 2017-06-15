=begin

a method that takes an array of strings, 
and returns a string that is all those strings 
concatenated together:

in casual pseudocode:

# set long_string varible as first element of array
# iterate over each string in rest of array, 
and add each to long_string
# return long_string

in formal pseudocode:

START

SET long_string = array[0]
remove array[0] from array

iterating over remainder of array
  SET long_string = long_string + array[i]

RETURN long_string

END



=end