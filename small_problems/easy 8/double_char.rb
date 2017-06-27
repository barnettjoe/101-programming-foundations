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
