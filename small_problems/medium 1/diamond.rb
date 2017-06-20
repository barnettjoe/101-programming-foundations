def diamond(odd_int)
  a = (1..odd_int).map { |x| ('*' * x).center(odd_int) if x.odd? }
  a.select! { |x| x }
  (a[0..-2] + a.reverse).each { |x| puts x }
end

def diamond_outline(odd_int)
  a = ['*'] + (1..odd_int / 2).map { |x| '**'.insert(1, ' ' * (2 * x - 1)) }
  a.map! { |x| x.center(odd_int) }
  (a[0..-2] + a.reverse).each { |x| puts x }
end

diamond(51)
diamond_outline(51)
