def swapcase(str)
  str.chars.map { |x| x.downcase == x ? x.upcase : x.downcase }.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'