BRACKETS = [")(", "}{", "]["]
QUOTES = %w(" ')

def balanced?(str)
  BRACKETS.each do |brack|
    open = 0  
    str.chars.each do |char|
      open += 1 if char == brack[1]
      open -= 1 if char == brack[0]
      return false if open < 0
    end
    return false if open != 0
  end
  return false if order_issue?(str)
  QUOTES.map { |quo| str.count(quo).even? }.all?
end

def order_issue?(str)
  arr = [1 ,3, 5].map { |x| BRACKETS.join.split('').rotate(x) }
  combos = arr.map { |x| (1..4).each_with_object([]) { |num, new_arr| new_arr.push(x[0] + x[num] + x[5]) } }.flatten
  all_regs = combos.map { |combo| Regexp.new "\\#{combo[0]}\\#{combo[1]}\\#{combo[2]}" }
  condensed_str = (str.scan /\(|\)|\[|\]|\{|\}/).join
  all_regs.map { |reg| condensed_str.scan reg }.flatten.size > 0
end


puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('([What] (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('[Hey!]') == true
puts balanced?('}Hey!{') == false
puts balanced?('What ((is))) up(') == false
puts balanced?("[Hey']") == false
puts balanced?('[H"ey!]') == false
puts balanced?('(Tom is a [master) trumpet player]') == false

