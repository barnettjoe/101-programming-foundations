produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  counter = 0
  fruits = {}
  loop do
    if hash[hash.keys[counter]] == 'Fruit'
      fruits[hash.keys[counter]] = 'Fruit'
    end
    counter += 1
    break if counter > hash.size
  end
  fruits
end

puts select_fruit(produce)