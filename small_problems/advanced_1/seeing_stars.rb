# make array of size 1 ["***"] but with spaces between each star
# size of spaces = (n - 2) / 2
# iterate down...making spaces smaller by 1 until there are none
# then append reverse of itself
# insert in the middle the "*" * n
# print each line (centered by n)

def star(n)
  num_spaces =  (n - 2) / 2
  arr = []
  until num_spaces < 0
    arr.push "*#{' ' * num_spaces}*#{' ' * num_spaces}*"
    num_spaces -= 1
  end 
  arr += arr.reverse
  arr.insert(n / 2, "*" * n)
  arr.each { |x| puts x.center(n) }
end

star(11)