munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.values.each do |hash| 
  if hash['age'] > 17
    if hash['age'] > 64
      label = 'senior'
    else
      label = 'adult'
    end
  else
    label = 'kid'
  end
  hash["age_group"] = label 
end

p munsters