# create hash of counter variables
# iterate over vehicles array
# for each element, check whether counter is already set
    # if not, set counter variable
    # if already set, increment by one
# print out results from hash

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  vehic_hash = {}
  array.each do |x|
    if vehic_hash.has_key?(x)
      vehic_hash[x] += 1
    else
      vehic_hash[x] = 1
    end
  end
vehic_hash.each {|k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)