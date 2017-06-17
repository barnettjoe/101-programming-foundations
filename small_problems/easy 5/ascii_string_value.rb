def ascii_value (string)
  string.chars.map {|el| el.ord}.inject(0, :+)
end


puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
