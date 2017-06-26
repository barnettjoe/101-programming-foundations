require 'pry'

def egyptian(rat_num)
  ans_arr = []
  subtr_denom = 1
  loop do
    subtr_denom += 1 until rat_num >= Rational(1, subtr_denom) && !(ans_arr.include?(subtr_denom))
    ans_arr.push(subtr_denom)
    rat_num -= Rational(1, subtr_denom)
    return ans_arr if rat_num == 0
  end
end

def unegyptian(arr)
  arr.map { |denom| Rational(1, denom) }.reduce(:+)
end


p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
p egyptian(Rational(1, 3))    # -> [1, 2, 3, 6]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)