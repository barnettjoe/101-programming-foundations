def circle(radius, graph_size, squeeze_factor)
  angles_rads = (0...6.3).step(0.01).to_a
  y_values = angles_rads.map { |x| (radius * Math.sin(x)) }
  x_values = angles_rads.map { |x| (squeeze_factor * radius * Math.cos(x)) }  
  stars = (x_values.zip y_values)
  coords = []
  graph_size.times { coords.push (" " * graph_size) }
  [1, -1].each do |sign|
    stars.each do |x, y| 
      coords[y + (graph_size / 2)][sign * x + (graph_size / 2)] = "*" 
    end
  end
  coords.each { |row| puts row.center(graph_size) }
end


circle(40.0, 251, 2)



