def staggered_case(str, upcase_indices = 'even')
  str.chars.map.with_index do |letter, idx|  
    criterion = upcase_indices == 'even' ? idx.odd? : idx.even?  
    if letter =~ /[a-zA-Z]/
      criterion ? letter.downcase : letter.upcase
    else
      letter
    end
  end.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts staggered_case('ignore 77 the 444 numbers', 'odd') == "iGnOrE 77 tHe 444 nUmBeRs"