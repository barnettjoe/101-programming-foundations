def sinusoidal
  arr = []
  100000.times {arr.push ' '  * 200}
  arr.map.with_index { |x, idx| x.insert(((Math.sin(idx.to_f/1000) * 50) + 100), "SSS") }.each { |x| puts x.center(250) }
end
sinusoidal






#http://imgur.com/DScBiKw   circle
#http://imgur.com/a1MjBM0   sine