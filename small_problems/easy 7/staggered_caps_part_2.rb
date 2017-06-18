def staggered_case(str, upcase_indices = 'even', count_non_alpha = true)
  new_arr = []
  let_count = 0
  str.chars.each do |el|
  bool = upcase_indices == 'even' ? let_count.odd? : let_count.even?  
    if el =~ /[a-z]/i
      bool ? (new_arr.push el.downcase) : (new_arr.push el.upcase)
      let_count += 1
    else
      new_arr.push el
      let_count += 1 if count_non_alpha
    end
  end
  new_arr.join
end


puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts staggered_case('I Love Launch School!', 'even' ,false) == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', 'even' ,false) == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers', 'even' ,false) == 'IgNoRe 77 ThE 444 nUmBeRs'