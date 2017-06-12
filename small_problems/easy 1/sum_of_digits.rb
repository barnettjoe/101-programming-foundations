# use recursion?
# if length of number as string == 1
 # ---> then return num
# else return last num + rest...

def sum(num)
  if num.to_s.size == 1
    num
  else
    num.to_s[-1].to_i + sum(num.to_s[0..-2].to_i)
  end
end


def alt_sum(num)
  a = num.to_s[0].to_i  
  a += alt_sum(num.to_s[1..-1].to_i) unless num.to_s.size == 1
  a
end

puts alt_sum(2) == 2
puts alt_sum(23) == 5
puts alt_sum(496) == 19
puts alt_sum(123_456_789) == 45