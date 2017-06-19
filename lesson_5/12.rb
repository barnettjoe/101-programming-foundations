arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
p arr.each_with_object({}) { |sub_arr, new_hsh| new_hsh[sub_arr[0]] = sub_arr[1] }
