def sine(x_scale, y_scale, rads)
  angles_rads = (0...rads).step(0.01).to_a
  x_values = angles_rads.map { |x| x  * x_scale/rads }
  y_values = angles_rads.map { |x| Math.sin(x) * y_scale }
  stars = (x_values.zip y_values)
  coords = []
  (y_scale * 4).times { coords.push (" " * x_scale) }
    stars.each do |x, y| 
      coords[2 * y_scale - y][x] = "*" 
    end
  coords.each { |row| puts row.center(x_scale) }
end


sine(250, 30, 20)