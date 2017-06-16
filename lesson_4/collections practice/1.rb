flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

p flintstones.each_with_index.each_with_object({}) { |(name, idx), hash| hash[name] = idx }
