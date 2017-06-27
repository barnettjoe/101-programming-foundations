[[[1, 2], [3, 4]], [5, 6]].map do |arr|  # map method called on outermost array...each inner array assigned to arr
  arr.map do |el|    # map method called on each inner array each element of which is assigned to el
    if el.to_s.size == 1    # i.e. if inner element is integer
      el + 1                # then return the int + 1
    else                    # it's an array
      el.map do |n|         # call map on this array, return new array with each element as n + 1
        n + 1             
      end
    end
  end
end