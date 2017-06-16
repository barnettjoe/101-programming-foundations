statement = "The Flintstones Rock"

p statement.gsub(/\s/, '').chars.each_with_object(Hash.new(0)) { |el, hsh| hsh[el] += 1}