  # first character of string is set by the parameter a
  # the rest of the characters are added. If the last character of the string is '0'...
  # ...then next we add (0-1).abs, which equals 1 
  # and if the last character is 1, we add (1-1).abs which equals 0 
  # return the string

def stringy(int, a = 1)
  new_str = a.to_s                                            
  (int - 1).times {new_str << (new_str[-1].to_i - 1).abs.to_s}
  new_str                                                        
end

puts stringy(6) == '101010'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'


