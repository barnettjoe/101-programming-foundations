def select_letter(str, letter)
  counter = 0
  letter_collection = ''
  loop do 
    letter_collection << str[counter] if str[counter] == letter 
    counter += 1
    break if counter >= str.size 
  end
  letter_collection
end




question = 'How many times does a particular character appear in this sentence?'
puts select_letter(question, 'a') == "aaaaaaaa"
puts select_letter(question, 't') == "ttttt"
puts select_letter(question, 'z') == ""