def greetings(arr, hsh)
  name = arr.join(' ')
  job = hsh[:occupation]
  title = hsh[:title]
  puts "Hello, #{name}! Nice to have a #{title} #{job} around."
end

greetings(%w(John Q Doe), title: 'Master', occupation: 'Plumber')
