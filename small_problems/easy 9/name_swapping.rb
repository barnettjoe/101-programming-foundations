def swap_name(full_name)
  full_name.split.reverse.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'