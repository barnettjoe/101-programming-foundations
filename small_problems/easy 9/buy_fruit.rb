def buy_fruit(list)
  list.map { |fruit, quant| [fruit] * quant}.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]