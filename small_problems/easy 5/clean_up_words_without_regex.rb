def cleanup(sentence)
  sentence.chars.map{|x| (('a'..'z').to_a.push(' ').include? x.downcase) ? x : ' '}.join.squeeze(' ')
end



puts cleanup("---what's my +*& line?") == ' what s my line '
