def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end


def non_rec_merge_sort(arr)
  slices = arr.each_slice(1).to_a
  loop do
    new_arr = []
    until slices.size < 2
      new_arr.push merge(slices.pop, slices.pop)
    end
    new_arr.push (slices.pop) unless slices.empty?
    return new_arr.flatten(1) if new_arr.size < 2
    slices = new_arr
    new = []
  end
end

p non_rec_merge_sort([7, 6, 5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5, 6, 7]