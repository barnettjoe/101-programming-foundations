def century(year)
  cent = (((year - 1) / 100) + 1).to_s
  cent + suffix(cent)
end

def suffix(cent)
  ths = %w(0 4 5 6 7 8 9 11 12 13)
  if (ths.include? cent[-2, 2]) || (ths.include? cent[-1])
    'th'
  else
    case cent[-1]
    when '1' then 'st'
    when '2' then 'nd'
    when '3' then 'rd'
    end
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
