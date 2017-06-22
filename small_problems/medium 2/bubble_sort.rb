def bubble_sort!(a)
  m = [true]
  until m.none?
    m = (0..a.size - 2).map do |x|
      a[x, 2][0] > a[x, 2][1] ? a[x, 2] = a[x, 2].reverse : nil
    end
  end
  a
end

def bubble_sort_optimized!(a)
  m = [true]
  u = a.size - 1
  loop do
    m = (0...u).map do |x|
      a[x, 2][0] > a[x, 2][1] ? a[x, 2] = a[x, 2].reverse : nil
    end
    m.any? ? (m.pop until m[-1]) : (return a)
    u = m.size - 1
  end
end

array = [5, 3]
puts bubble_sort_optimized!(array) == [3, 5]

array = [6, 2, 7, 1, 4]
puts bubble_sort_optimized!(array) == [1, 2, 4, 6, 7]

array = [6, 4, 1, 7, 5, 3, 2]
puts bubble_sort_optimized!(array) == [1, 2, 3, 4, 5, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
puts bubble_sort_optimized!(array) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

array = [5, 3]
puts bubble_sort!(array) == [3, 5]

array = [6, 2, 7, 1, 4]
puts bubble_sort!(array) == [1, 2, 4, 6, 7]

array = [6, 4, 1, 7, 5, 3, 2]
puts bubble_sort!(array) == [1, 2, 3, 4, 5, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
puts bubble_sort!(array) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
