def palindrome? (item)
  item == item.reverse
end

def less_strict_palindrome? (item)
  palindrome? item.downcase.gsub(/[^[:alnum:]]/, '')
end

puts less_strict_palindrome?('madam') == true
puts less_strict_palindrome?('Madam') == true       
puts less_strict_palindrome?("madam i'm adam") == true 
puts less_strict_palindrome?('356653') == true