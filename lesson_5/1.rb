arr = ['10', '11', '9', '7', '8']

p arr.sort_by { |x| -1 * x.to_i }

#or

p arr.sort { |a, b| b.to_i <=> a.to_i }