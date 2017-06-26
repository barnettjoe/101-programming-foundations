def merge(array1, array2 = [], *more)
  if more.empty?
    index2 = 0
    result = []
    array1.each do |value|
      while index2 < array2.size && array2[index2] <= value
        result << array2[index2]
        index2 += 1
      end
      result << value
    end
    return result.concat(array2[index2..-1])
  else
    return merge *[(merge *[array1, array2])] + more
  end
end

def sort(arr)
  merge *arr.each_slice(2).to_a.map { |x| x.first > x.last ? x.reverse : x }
end

p sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p sort([5, 3]) == [3, 5]
p sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]