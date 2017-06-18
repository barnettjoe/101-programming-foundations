CONSONANTS = 'bcdfghjklmnpqrstvwxyz'
def repeater(str)
  str.chars.map do |char| 
    if CONSONANTS.include? char.downcase
       char * 2  
    else
      char
    end
  end.join
end


puts repeater('Hello') #== "HHeelllloo"
puts repeater("Good job!") #== "GGoooodd  jjoobb!!"
puts repeater('') == ''