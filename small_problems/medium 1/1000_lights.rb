def lights(int)
  lights = (1..int).map { |a| [a, [true, false]] }
  (2..int).each { |n| lights.each { |b| b[1].rotate! if (b[0] % n).zero? } }
  on, off = lights.partition { |c| c[1][0] }
  { on: on.map { |d| d[0] }, off: off.map { |d| d[0] } }
end

def lights_by_squares(num)
  on, off = (1..num).partition { |x| (x**0.5).floor == x**0.5 }
  puts "lights #{on[0, (on.size - 1)].join(', ')} & #{on[-1]} are now on"
  puts "lights #{off[0, (off.size - 1)].join(', ')} & #{off[-1]} are now off"  
end

p lights_by_squares(100)

